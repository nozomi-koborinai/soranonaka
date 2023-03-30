import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soranonaka/presentation/page/current_weather_page.dart';
import 'package:soranonaka/presentation/page/profile_page.dart';
import 'package:soranonaka/presentation/router_config.dart';
import 'package:soranonaka/util/app_values.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'my_feelings_page.dart';

/// ホーム画面
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: AppColors.skyBlue,
        items: [
          BottomBarItem(
            icon: const Icon(Icons.cloud_outlined),
            selectedIcon: const Icon(Icons.cloud_outlined),
            selectedColor: AppColors.blue,
            borderColor: AppColors.blue,
            backgroundColor: AppColors.white,
            title: const Text('イマノテンキ'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedIcon: const Icon(Icons.favorite_border),
            selectedColor: Colors.blue,
            borderColor: Colors.blue,
            backgroundColor: AppColors.white,
            title: const Text('ジブンノキモチ'),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.person_2_outlined,
            ),
            selectedIcon: const Icon(Icons.person_outlined),
            backgroundColor: Colors.white,
            selectedColor: Colors.blue,
            borderColor: AppColors.blue,
            title: const Text('プロフィール'),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.end,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(
            () {
              controller.jumpToPage(index);
              currentIndex = index;
            },
          );
        },
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.animated,
          opacity: 0.3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(RouteConfigs.feelingsPost.name),
        backgroundColor: AppColors.skyBlue,
        child: Icon(
          Icons.edit,
          color: AppColors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: Container(
        color: AppColors.skyBlue,
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          bottom: true,
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            children: const [
              CurrentWeatherPage(),
              MyFeelingsPage(),
              ProfilePage(),
            ],
          ),
        ),
      ),
    );
  }
}
