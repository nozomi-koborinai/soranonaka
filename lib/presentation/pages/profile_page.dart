import 'package:flutter/material.dart';
import 'package:soranonaka/presentation/components/custom_text_field.dart';
import 'package:soranonaka/utils/app_values.dart';

// プロフィール画面
class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final nameTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        color: AppColors.skyBlue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/39579511?v=4',
                ),
              ),
              CustomTextField(
                  labelText: 'なまえ', controller: nameTextFieldController)
            ],
          ),
        ),
      ),
    );
  }
}
