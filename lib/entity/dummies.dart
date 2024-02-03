import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

/// 이미지 생성 함수
String picSum(int id) {
  return 'https://picsum.photos/id/$id/411/411';
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
  '깨끗하게 잘 쓰던 물건이에요. 잘 쓰면 좋겠습니다. 감사합니다.',
  ProductStatus.normal,
  [picSum(100), picSum(201), picSum(103)],
  DateTime.now().subtract(30.minutes),
);

final product2 = Product(
  user1,
  '갤럭시 S24 Ultra',
  1800000,
  '새로운 갤럭시 모델 갤럭시 S24 Ultra와 함께 해보세요!!!',
  ProductStatus.normal,
  [picSum(999), picSum(888), picSum(777)],
  DateTime.now().subtract(5.minutes),
);

final product3 = Product(
  user1,
  '스마트 티비',
  2000,
  '깨끗하게 잘 쓰던 물건이에요.',
  ProductStatus.normal,
  [picSum(500), picSum(501), picSum(502), picSum(503)],
  DateTime.now().subtract(10.seconds),
);

/// 게시물 더미 데이터
final post1 =
    ProductPost(product1.user, product1, '글의 내용입니다.', '서울 특별시 성수동', 3, 2);

final post2 = ProductPost(
    product2.user, product2, '갤럭시 신제품, 완전 새 제품, 네고X', '서울 특별시 강남구', 50, 2500);

final post3 =
    ProductPost(product3.user, product3, '울트라 대형 티비, 깨끗함', '경기도 일산', 22, 20);

///
final postList = [post1, post2, post3, post1, post2, post3];
