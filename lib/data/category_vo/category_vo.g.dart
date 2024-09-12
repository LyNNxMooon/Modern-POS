// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryVO _$CategoryVOFromJson(Map<String, dynamic> json) => CategoryVO(
      id: (json['id'] as num).toInt(),
      orderIndex: (json['orderIndex'] as num?)?.toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$CategoryVOToJson(CategoryVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderIndex': instance.orderIndex,
      'name': instance.name,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
