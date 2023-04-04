import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soranonaka/domain/user/user_repository.dart';

/// ログイン結果プロバイダー
final loginResultProvider = StateProvider<AsyncValue<void>>(
  (_) => const AsyncValue.data(null),
);

/// ログインユースケースプロバイダー
final loginUseCaseProvider = Provider(
  LoginUseCase.new,
);

/// ログインユースケース
class LoginUseCase {
  const LoginUseCase(this.ref);
  final Ref ref;

  /// ログインする
  Future<void> login() async {
    // ログイン済みなら何もしない
    if (await ref.read(loggedInProvider.future)) {
      return;
    }

    final notifier = ref.read(loginResultProvider.notifier);
    notifier.state = const AsyncValue.loading();
    notifier.state = await AsyncValue.guard(() async {
      // ログイン処理実行
      ref.read(userRepositoryProvider).login();
      final _ = await ref.refresh(userStreamProvider.future);
    });
  }
}
