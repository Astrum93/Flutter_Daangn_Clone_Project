import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProductPostItem extends StatelessWidget {
  final ProductPost post;

  const ProductPostItem(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: post.product.images[0],
            width: 150,
          ),
        ),
        const Width(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              post.content.text.size(17).bold.make(),
              Row(
                children: [
                  post.address.simpleAddress.text
                      .color(context.appColors.lessImportantColor)
                      .make(),
                  '•'.text.color(context.appColors.lessImportantColor).make(),
                  timeago
                      .format(post.cre, locale: context.locale.languageCode)
                      .text
                      .make()
                ],
              )
            ],
          ),
        )
      ],
    ).p(15);
  }
}
