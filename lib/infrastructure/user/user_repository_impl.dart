import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:soranonaka/domain/user/user_repository.dart';

import '../../domain/exceptions.dart';
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
  Stream<User?> userChanges() {
    return userChangesController.stream;
  }

  @override
  Future<void> login() async {
    try {
      await auth.signInAnonymously();
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw e.toAuthException();
    }
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

extension on firebase_auth.FirebaseAuthException {
  /// FirebaseAuthException => AuthException
  AuthException toAuthException() {
    switch (code) {
      case 'invalid-email':
        return AuthException.invalidEmail();
      case 'wrong-password':
        return AuthException.wrongPassword();
      case 'weak-password':
        return AuthException.weakPassword();
      case 'user-not-found':
        return AuthException.userNotFound();
      case 'user-disabled':
        return AuthException.userDisabled();
      case 'too-many-requests':
        return AuthException.tooManyRequests();
      case 'operation-not-allowed':
        return AuthException.operationNotAllowed();
      case 'network-request-failed':
        return AuthException.networkRequestFailed();
      case 'email-already-in-use':
      case 'credential-already-in-use':
        return AuthException.emailAlreadyInUse();
      case 'user-mismatch':
        return AuthException.userMismatch();
      case 'invalid-action-code':
        return AuthException.invalidActionCode();
      case 'invalid-credential':
        return AuthException.invalidCredential();
      case 'requires-recent-login':
        return AuthException.requiresRecentLogin();
      case 'internal-error':
      case 'unknown':
        return AuthException.unknown();
      default:
        return AuthException.unknown();
    }
  }
}
