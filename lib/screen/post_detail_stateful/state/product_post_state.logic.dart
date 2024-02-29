import 'package:fast_app_base/common/cli_common.dart';

import '../../../data/network/daangn_api.dart';
import '../../../entity/post/vo_product_post.gen.dart';

Future<ProductPost> requestPost(int id) async {
  await sleepAsync(400.ms);
  return await DaangnApi.getPost(id);
}
