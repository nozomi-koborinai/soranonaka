import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:soranonaka/domain/user/user_repository.dart';

import '../../domain/user/entity/user.dart';
import 'document/user_document.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required this.auth,
    required this.userColletionRef,
  }) {
    // 認証状態を監視する
    _authChangesSubscription = auth.userChanges().listen((firebaseUser) async {
      _firebaseUser = firebaseUser;
      if (firebaseUser == null) {
        userChangesController.add(null);
        await _userChangesSubscription?.cancel();
        return;
      }
      _userChangesSubscription = _docRef?.snapshots().listen((snapshot) {
        if (userChangesController.isClosed) {
          return;
        }
        final user = snapshot.data()?.toUser(snapshot.id);
        userChangesController.add(user);
      });
    });
  }
  final firebase_auth.FirebaseAuth auth;
  final CollectionReference<Map<String, dynamic>> userColletionRef;
  StreamSubscription<firebase_auth.User?>? _authChangesSubscription;
  firebase_auth.User? _firebaseUser;
  final userChangesController = StreamController<User?>.broadcast();
  StreamSubscription<DocumentSnapshot<UserDocument?>>? _userChangesSubscription;
  bool? _loggedIn;

  DocumentReference<UserDocument?>? get _docRef {
    final uid = _firebaseUser?.uid;
    if (uid == null) {
      return null;
    }

    return userColletionRef.withConverter<UserDocument?>(
      fromFirestore: (snapshot, _) {
        final json = snapshot.data();
        return json != null ? UserDocument.fromJson(json) : null;
      },
      toFirestore: (userDoc, options) {
        final json = userDoc?.toJson() ?? <String, dynamic>{};
        if (options?.merge ?? false) {
          json.removeWhere((field, dynamic value) => value == null);
        }
        return json;
      },
    ).doc(uid);
  }

  void dispose() {
    _authChangesSubscription?.cancel();
    _userChangesSubscription?.cancel();
    userChangesController.close();
  }

  @override
  Stream<bool> loggedInChanges() =>
      userChangesController.stream.map<bool>((user) => user != null).where(
        (loggedIn) {
          if (_loggedIn == loggedIn) {
            // ログイン状態に変更がなければ通知しない
            return false;
          }

          _loggedIn = loggedIn;
          return true;
        },
      );

  @override
  Future<void> add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<void> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> update(User user) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

extension on UserDocument {
  /// UserDocument => User
  User toUser(String id) => User(
        uid: id,
        name: name,
        gender: gender,
        comment: comment,
        imageUrl: imageUrl,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
