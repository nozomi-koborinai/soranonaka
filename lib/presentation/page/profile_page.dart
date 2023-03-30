import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:soranonaka/presentation/component/custom_text_field.dart';
import 'package:soranonaka/util/app_values.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final nameController = TextEditingController();
  final sentenceController = TextEditingController();
  String? isSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ロゴ'),
      ),
      body: Container(
        color: AppColors.skyBlue,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: const [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 68,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/39579511?v=4',
                    ),
                  ),
                ],
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  labelText: '名前',
                  controller: nameController,
                ),
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Text(
                            '性別',
                            style: TextStyle(
                              color: AppColors.grey,
                            ),
                          ),
                          isDense: true,
                          items: [
                            DropdownMenuItem(
                              value: '未選択',
                              child: Text(
                                '未選択',
                                style: TextStyle(
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '男性',
                              child: Text(
                                '男性',
                                style: TextStyle(
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: '女性',
                              child: Text(
                                '女性',
                                style: TextStyle(
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'その他',
                              child: Text(
                                'その他',
                                style: TextStyle(
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              isSelectedItem = value;
                            });
                          },
                          value: isSelectedItem,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  labelText: 'ひとこと',
                  controller: sentenceController,
                  isMultiLine: true,
                ),
              ),
              const Gap(20),
              Text(
                '※必須入力の項目はありません',
                style: TextStyle(
                  color: AppColors.darkGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
