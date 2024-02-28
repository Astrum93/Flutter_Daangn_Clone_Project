import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_address.gen.freezed.dart';

@freezed
class Address with _$Address {
  const factory Address(
    final String fullAddress,
    final String simpleAddress,
  ) = _Address;
}
