import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/item_vo/item_vo.dart';
part 'item_detail_response.g.dart';

@JsonSerializable()
class ItemDetailResponse {
  final bool success;
  final String message;
  final ItemVO data;

  ItemDetailResponse(
      {required this.success, required this.message, required this.data});

  factory ItemDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailResponseFromJson(json);
}
