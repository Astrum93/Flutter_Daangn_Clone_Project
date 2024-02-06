import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final notificationEditModeProvider = StateProvider((ref) => false);

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditMode = ref.watch(notificationEditModeProvider);
    return Column(
      children: [
        AppBar(
          title: '알림'.text.make(),
          actions: [
            Tap(
              onTap: () {
                ref.read(notificationEditModeProvider.notifier).state =
                    !isEditMode;
              },
              child: (isEditMode ? '완료' : '편집').text.make().p(10),
            ),
          ],
        ),
        TabBarView(
          children: [
            '활동 알림'.text.make(),
            '키워드 알림'.text.make(),
          ],
        ),
      ],
    );
  }
}
