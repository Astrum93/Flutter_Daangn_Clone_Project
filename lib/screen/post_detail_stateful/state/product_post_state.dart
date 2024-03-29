import 'package:fast_app_base/screen/post_detail_stateful/state/product_post_state.logic.dart';
import 'package:flutter/widgets.dart';

import '../../../entity/post/vo_product_post.gen.dart';
import '../s_post_detail_with_stateful_widget.dart';

mixin ProductPostState<T extends PostIdProvidedScreen> on State<T> {
  ProductPost? productPost;

  @override
  void initState() {
    initPost();
    super.initState();
  }

  void initPost() async {
    final response = await requestPost(widget.id);
    setState(() {
      productPost = response;
    });
  }
}
