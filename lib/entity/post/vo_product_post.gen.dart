import 'package:fast_app_base/entity/post/vo_simple_product_post.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_product_post.gen.freezed.dart';

@freezed
class ProductPost with _$ProductPost {
  const factory ProductPost({
    required SimpleProductPost simpleProductPost,
    required String content,
  }) = _ProductPost;
}
