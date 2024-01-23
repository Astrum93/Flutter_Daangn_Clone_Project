import 'package:flutter_riverpod/flutter_riverpod.dart';

/// State를 같이 관리하고 싶은 경우
class FloatingButtonState {
  bool isExpanded;
  bool isSmall;

  FloatingButtonState()
      : isExpanded = false,
        isSmall = false;
}

/// State와 Notifier를 가진 Provider
final floatingButtonStateProvider =
    StateNotifierProvider<FloatingButtonStateNotifier, FloatingButtonState>(
  (ref) => FloatingButtonStateNotifier(
    FloatingButtonState(),
  ),
);

/// State를 감지하는 Notifier
class FloatingButtonStateNotifier extends StateNotifier<FloatingButtonState> {
  FloatingButtonStateNotifier(super.state);

  @override
  bool updateShouldNotify(
      FloatingButtonState old, FloatingButtonState current) {
    return true;
  }

  void onTapButton() {
    state = state
      ..isExpanded = !state.isExpanded
      ..isSmall = true;
  }

  void changeButtonSize(bool isSmall) {
    state = state..isSmall = isSmall;
  }
}

/// 개별로 State를 관리하고 싶은 경우
// final floatingButtonIsExpandedProvider = StateProvider((ref) => false);
// final floatingButtonIsSmallProvider = StateProvider((ref) => false);
