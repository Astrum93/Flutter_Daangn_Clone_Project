import 'package:fast_app_base/entity/post/vo_simple_product_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailScreen extends ConsumerWidget {
  final SimpleProductPost? simpleProductPost;

  const PostDetailScreen(int id, {super.key, this.simpleProductPost});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Placeholder();
  }
}
