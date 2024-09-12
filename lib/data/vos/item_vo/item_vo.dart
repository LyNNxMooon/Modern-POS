import 'package:json_annotation/json_annotation.dart';
import 'package:modern_pos/data/vos/item_vo/item_brand_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_category_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_genre_vo.dart';
part 'item_vo.g.dart';

@JsonSerializable()
class ItemVO {
  final int id;
  final String name;
  final String? barcode;
  @JsonKey(name: "order_index")
  final int orderIndex;
  final String? description;
  final ItemBrandVO? brand;
  final ItemCategoryVO category;
  final List<ItemGenreVO> genres;
  final int quantity;
  final String price;
  @JsonKey(name: "discounted_price")
  final int discountedPrice;
  final String status;
  final bool wish;
  @JsonKey(name: "wish_id")
  final bool wishId;
  final String image;
  final String instock;
  @JsonKey(name: "created_at")
  final String createdAt;

  ItemVO(
      {required this.id,
      required this.name,
      required this.barcode,
      required this.orderIndex,
      required this.description,
      required this.brand,
      required this.category,
      required this.genres,
      required this.quantity,
      required this.price,
      required this.discountedPrice,
      required this.status,
      required this.wish,
      required this.wishId,
      required this.image,
      required this.instock,
      required this.createdAt});

  factory ItemVO.fromJson(Map<String, dynamic> json) => _$ItemVOFromJson(json);
}
