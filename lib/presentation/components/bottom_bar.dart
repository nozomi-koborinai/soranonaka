import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soranonaka/application/state/selected_post.dart';
import 'package:soranonaka/presentation/pages/home_page.dart';
import 'package:soranonaka/utils/app_values.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

/// ボトムバー
class BottomBar extends ConsumerWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = PageController();
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: AppColors.skyBlue,
        items: [
          BottomBarItem(
              icon: const Icon(
                Icons.house_outlined,
              ),
              selectedIcon: const Icon(Icons.house_rounded),
              selectedColor: Colors.teal,
              backgroundColor: Colors.tealAccent,
              title: const Text('イマノテンキ')),
          BottomBarItem(
              icon: const Icon(Icons.star_border_rounded),
              selectedIcon: const Icon(Icons.star_rounded),
              selectedColor: Colors.green,
              backgroundColor: Colors.lightGreenAccent,
              title: const Text('ジブンノキモチ')),
          BottomBarItem(
              icon: const Icon(
                Icons.style_outlined,
              ),
              selectedIcon: const Icon(
                Icons.style,
              ),
              backgroundColor: Colors.amber,
              selectedColor: Colors.deepOrangeAccent,
              title: const Text('プロフィール')),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.end,
        currentIndex: ref.watch(selectedBottomBarIndexProvider) ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          ref.read(selectedBottomBarIndexProvider.notifier).set(index);
        },
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.liquid,
          iconStyle: IconStyle.animated,
          opacity: 0.3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.heat_pump_rounded,
          color: AppColors.skyBlue,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: PageView(
        controller: controller,
        children: const [
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
}
