import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/vo_product.gen.dart';
import '../user/vo_address.gen.dart';
import '../user/vo_user.gen.dart';

part 'vo_simple_product_post.gen.freezed.dart';

@freezed
class SimpleProductPost with _$SimpleProductPost {
  const factory SimpleProductPost(
    final int id,
    final User user,
    final Product product,
    final String title,
    final Address address,
    final int chatCount,
    final int likeCount,
    final DateTime createdTime,
  ) = _SimpleProductPost;
}
