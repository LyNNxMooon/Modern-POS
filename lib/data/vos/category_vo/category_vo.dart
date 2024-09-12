import 'package:json_annotation/json_annotation.dart';
part 'category_vo.g.dart';

@JsonSerializable()
class CategoryVO {
  final int id;
  int? orderIndex;
  final String name;
  final String image;
  String? createdAt;
  final String updatedAt;

  CategoryVO(
      {required this.id,
      required this.orderIndex,
      required this.name,
      required this.image,
      required this.createdAt,
      required this.updatedAt});

  factory CategoryVO.fromJson(Map<String, dynamic> json) =>
      _$CategoryVOFromJson(json);
}
