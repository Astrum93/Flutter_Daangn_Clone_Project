import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/post/vo_simple_product_post.dart';
import 'package:fast_app_base/screen/post_detail/provider/product_post_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailScreen extends ConsumerWidget {
  final SimpleProductPost? simpleProductPost;
  final int id;

  const PostDetailScreen(
    this.id, {
    super.key,
    this.simpleProductPost,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productPost = ref.watch(productPostProvider(id));

    return productPost.when(
      data: (data) => _PostDetail(data.simpleProductPost),
      error: (error, trace) => '에러발생'.text.make(),
      loading: () => simpleProductPost != null
          ? _PostDetail(simpleProductPost!)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class _PostDetail extends StatelessWidget {
  final SimpleProductPost simpleProductPost;
  final ProductPost? productPost;

  const _PostDetail(this.simpleProductPost, {super.key, this.productPost});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
