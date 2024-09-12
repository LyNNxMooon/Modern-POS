import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/category_vo/category_vo.dart';
part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  final bool success;
  final String message;
  final List<CategoryVO> data;

  CategoryResponse(
      {required this.success, required this.message, required this.data});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
