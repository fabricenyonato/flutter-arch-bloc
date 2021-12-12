import 'package:flutter_arch_bloc/api/strapi_backend/entites/image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_category.g.dart';

@JsonSerializable(createToJson: false)
class ProductCategoryAttributes {
  final String name;
  final ImageResponse? image;

  ProductCategoryAttributes({
    required this.name,
    this.image,
  });

  factory ProductCategoryAttributes.fromJson(Map<String, dynamic> json) =>
    _$ProductCategoryAttributesFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductCategory {
  final int id;
  final ProductCategoryAttributes attributes;

  ProductCategory({
    required this.id,
    required this.attributes,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
    _$ProductCategoryFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductCategoryResponse {
  final ProductCategory data;

  ProductCategoryResponse({ required this.data });

  factory ProductCategoryResponse.fromJson(Map<String, dynamic> json) =>
    _$ProductCategoryResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductCategoryListResponse {
  final List<ProductCategory> data;

  ProductCategoryListResponse({ required this.data });

  factory ProductCategoryListResponse.fromJson(Map<String, dynamic> json) =>
    _$ProductCategoryListResponseFromJson(json);
}
