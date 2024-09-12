import 'package:json_annotation/json_annotation.dart';
part 'item_category_vo.g.dart';

@JsonSerializable()
class ItemCategoryVO {
  final int id;
  final String name;

  ItemCategoryVO({required this.id, required this.name});

  factory ItemCategoryVO.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryVOFromJson(json);
}
