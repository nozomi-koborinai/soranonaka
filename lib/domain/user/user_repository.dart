import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/user.dart';

/// ユーザーリポジトリプロバイダー
///
/// アプリ起動時 or テスト時に本プロバイダーをoverrideすること
final userRepositoryProvider = Provider<UserRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

/// ユーザーリポジトリのインターフェース
abstract class UserRepository {
  Stream<bool> loggedInChanges();
  Future<void> login();
  Future<void> logout();
  Future<void> add();
  Future<void> delete();
  Future<void> update(User user);
}
