// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_category_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCategoryVO _$ItemCategoryVOFromJson(Map<String, dynamic> json) =>
    ItemCategoryVO(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ItemCategoryVOToJson(ItemCategoryVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
