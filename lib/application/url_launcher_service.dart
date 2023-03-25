import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soranonaka/application/url_launcher_exception.dart';
import 'package:url_launcher/url_launcher.dart';

import 'state/url_launch_data.dart';
import 'state/url_launch_result.dart';

/// URL起動サービスプロバイダー
final urlLauncherServiceProvider = Provider(
  UrlLauncherService.new,
);

/// URL起動サービス
class UrlLauncherService {
  const UrlLauncherService(this.ref);

  final Ref ref;

  /// URLを起動する
  Future<void> launch(
    String urlString, {
    LaunchMode mode = LaunchMode.platformDefault,
  }) async {
    final notifier = ref.read(urlLaunchResultProvider.notifier);
    notifier.state = const AsyncValue.loading();
    notifier.state = await AsyncValue.guard(() async {
      final data = UrlLaunchData(urlString: urlString, mode: mode);
      try {
        final url = Uri.parse(urlString);
        final result = await launchUrl(url, mode: mode);
        if (!result) {
          throw UrlLauncherException(data);
        }
        return data;
      } on FormatException catch (e, s) {
        throw UrlLauncherException(data, e, s);
      } on PlatformException catch (e, s) {
        throw UrlLauncherException(data, e, s);
      } on ArgumentError catch (e, s) {
        throw UrlLauncherException(data, e, s);
      }
    });
  }
}
