import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 기존의 State
/// State를 같이 관리하고 싶은 경우
// class FloatingButtonState {
//   bool isExpanded;
//   bool isSmall;
//
//   FloatingButtonState(this.isExpanded, this.isSmall);
// }

/// State와 Notifier를 가진 Provider
final floatingButtonStateProvider =
    StateNotifierProvider<FloatingButtonStateNotifier, FloatingButtonState>(
  (ref) => FloatingButtonStateNotifier(
    const FloatingButtonState(false, false),
  ),
);

/// State를 감지하는 Notifier
class FloatingButtonStateNotifier extends StateNotifier<FloatingButtonState> {
  FloatingButtonStateNotifier(super.state);

  /// freezed로 State 관리 후 생략 가능
  // @override
  // bool updateShouldNotify(
  //     FloatingButtonState old, FloatingButtonState current) {
  //   return true;
  // }

  void onTapButton() {
    state = state.copyWith(isExpanded: !state.isExpanded, isSmall: true);
  }

  void changeButtonSize(bool isSmall) {
    state = state.copyWith(isSmall: isSmall);
  }
}

/// 개별로 State를 관리하고 싶은 경우
// final floatingButtonIsExpandedProvider = StateProvider((ref) => false);
// final floatingButtonIsSmallProvider = StateProvider((ref) => false);
