import 'package:json_annotation/json_annotation.dart';
part 'item_genre_vo.g.dart';

@JsonSerializable()
class ItemGenreVO {
  final int id;
  final String name;

  ItemGenreVO({required this.id, required this.name});

  factory ItemGenreVO.fromJson(Map<String, dynamic> json) =>
      _$ItemGenreVOFromJson(json);
}
