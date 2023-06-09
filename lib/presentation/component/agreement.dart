import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/app_info.dart';
import '../../usecase/url_launcher_service.dart';
import 'anchor_text.dart';

/// 利用規約とプライバシーポリシーをまとめたウィジェット
class Agreement extends ConsumerWidget {
  const Agreement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: '利用規約',
            style: AnchorText.anchorStyleText(context),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await ref.read(urlLauncherServiceProvider).launch(
                      ref.read(appInfoProvider).termsOfServiceUrl.toString(),
                    );
              },
          ),
          const TextSpan(text: ' と '),
          TextSpan(
            text: 'プライバシーポリシー',
            style: AnchorText.anchorStyleText(context),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await ref.read(urlLauncherServiceProvider).launch(
                      ref.read(appInfoProvider).privacyPolicyUrl.toString(),
                    );
              },
          ),
          const TextSpan(text: ' に\n同意の上ご利用ください'),
        ],
      ),
    );
  }
}
