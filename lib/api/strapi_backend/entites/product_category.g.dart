// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCategoryAttributes _$ProductCategoryAttributesFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryAttributes(
      name: json['name'] as String,
      image: json['image'] == null
          ? null
          : ImageResponse.fromJson(json['image'] as Map<String, dynamic>),
    );

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) =>
    ProductCategory(
      id: json['id'] as int,
      attributes: ProductCategoryAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

ProductCategoryResponse _$ProductCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryResponse(
      data: ProductCategory.fromJson(json['data'] as Map<String, dynamic>),
    );

ProductCategoryListResponse _$ProductCategoryListResponseFromJson(
        Map<String, dynamic> json) =>
    ProductCategoryListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
