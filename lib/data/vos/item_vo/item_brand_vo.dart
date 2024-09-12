import 'package:json_annotation/json_annotation.dart';
part 'item_brand_vo.g.dart';

@JsonSerializable()
class ItemBrandVO {
  final int id;
  final String name;

  ItemBrandVO({required this.id, required this.name});

  factory ItemBrandVO.fromJson(Map<String, dynamic> json) =>
      _$ItemBrandVOFromJson(json);
}
