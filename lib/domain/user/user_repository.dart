import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/user.dart';

/// ユーザーリポジトリプロバイダー
///
/// アプリ起動時 or テスト時に本プロバイダーをoverrideすること
final userRepositoryProvider = Provider<UserRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

/// ログイン中かどうかを返すプロバイダー
final loggedInProvider = StreamProvider(
  (ref) => ref.watch(userRepositoryProvider).loggedInChanges(),
);

/// ユーザーStreamプロバイダー
final userStreamProvider = StreamProvider(
  (ref) => ref.watch(userRepositoryProvider).userChanges(),
  name: 'userStreamProvider',
);

/// ユーザーリポジトリのインターフェース
abstract class UserRepository {
  Stream<bool> loggedInChanges();
  Stream<User?> userChanges();
  Future<void> login();
  Future<void> logout();
  Future<void> update(User user);
}
