// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributes _$ProductAttributesFromJson(Map<String, dynamic> json) =>
    ProductAttributes(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      cover: ImageResponse.fromJson(json['cover'] as Map<String, dynamic>),
      category: ProductCategoryResponse.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      attributes: ProductAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      data: Product.fromJson(json['data'] as Map<String, dynamic>),
    );

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) =>
    ProductListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
