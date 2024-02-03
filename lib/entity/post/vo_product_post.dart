import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/vo_product.dart';
import '../user/vo_user.dart';

part 'vo_product_post.freezed.dart';

@freezed
class ProductPost with _$ProductPost {
  const factory ProductPost(
    final User user,
    final Product product,
    final String content,
    final String address,
    final int chatCount,
    final int likeCount,
  ) = _ProductPost;
}
