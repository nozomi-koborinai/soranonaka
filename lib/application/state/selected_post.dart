import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 選択中ボトムバーインデックス
final selectedBottomBarIndexProvider =
    NotifierProvider<SelectedBottomBarIndex, int>(SelectedBottomBarIndex.new);

/// 選択中のボトムバーインデックスを管理するためのクラス
class SelectedBottomBarIndex extends Notifier<int> {
  @override
  int build() => 0;

  void set(int index) => state = index;
}
