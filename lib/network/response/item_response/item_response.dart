import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/item_vo/item_vo.dart';
part 'item_response.g.dart';

@JsonSerializable()
class ItemResponse {
  final bool success;
  final int total;
  @JsonKey(name: "can_load_more")
  final bool loadMore;
  final List<ItemVO> data;

  ItemResponse(
      {required this.success,
      required this.total,
      required this.loadMore,
      required this.data});

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);
}
