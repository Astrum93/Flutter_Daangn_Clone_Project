import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/entity/post/vo_simple_product_post.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

/// 이미지 생성 함수
String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
}

/// 유저 더미 데이터
final user1 =
    User(id: 1, nickname: '홍길동', temperature: 36.5, profileUrl: picSum(1010));
final user2 =
    User(id: 2, nickname: '바다', temperature: 36.5, profileUrl: picSum(900));
final user3 =
    User(id: 2, nickname: '파토', temperature: 36.5, profileUrl: picSum(700));

/// 상품 더미 데이터
final product1 = Product(
  user1,
  '아이폰13',
  700000,
  //'깨끗하게 잘 쓰던 물건이에요. 잘 쓰면 좋겠습니다. 감사합니다.',
  ProductStatus.normal,
  [picSum(100), picSum(201), picSum(103)],
);

final product2 = Product(
  user1,
  '갤럭시 S24 Ultra',
  1800000,
  //'새로운 갤럭시 모델 갤럭시 S24 Ultra와 함께 해보세요!!!',
  ProductStatus.normal,
  [picSum(999), picSum(888), picSum(777)],
);

final product3 = Product(
  user1,
  '스마트 티비',
  2000,
  //'깨끗하게 잘 쓰던 물건이에요.',
  ProductStatus.normal,
  [picSum(500), picSum(501), picSum(502), picSum(503)],
);

/// 게시물 더미 데이터
final post1 = SimpleProductPost(
  1,
  product1.user,
  product1,
  '글의 내용입니다.',
  const Address('서울시 특별한 주소', '플러터 동'),
  3,
  2,
  DateTime.now().subtract(30.minutes),
);

final post2 = SimpleProductPost(
  2,
  product2.user,
  product2,
  '갤럭시 신제품, 완전 새 제품, 네고X',
  const Address('서울시 특별한 주소', '다트 시'),
  50,
  2500,
  DateTime.now().subtract(5.minutes),
);

final post3 = SimpleProductPost(
  3,
  product3.user,
  product3,
  '울트라 대형 티비, 깨끗함',
  const Address('서울시 특별한 주소', '앱 동'),
  22,
  20,
  DateTime.now().subtract(10.seconds),
);

///
final postList = [post1, post2, post3, post1, post2, post3];
