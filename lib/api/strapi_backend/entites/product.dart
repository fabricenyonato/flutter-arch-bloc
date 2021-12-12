import 'package:flutter_arch_bloc/api/strapi_backend/entites/image.dart';
import 'package:flutter_arch_bloc/api/strapi_backend/entites/product_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable(createToJson: false)
class ProductAttributes {
  final String name;
  final String description;
  final double price;
  final ImageResponse cover;
  final ProductCategoryResponse category;

  ProductAttributes({
    required this.name,
    required this.description,
    required this.price,
    required this.cover,
    required this.category,
  });

  factory ProductAttributes.fromJson(Map<String, dynamic> json) =>
    _$ProductAttributesFromJson(json);
}

@JsonSerializable(createToJson: false)
class Product {
  final int id;
  final ProductAttributes attributes;

  Product({
    required this.id,
    required this.attributes,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
    _$ProductFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductResponse {
  final Product data;

  const ProductResponse({ required this.data });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
    _$ProductResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class ProductListResponse {
  final List<Product> data;

  const ProductListResponse({ required this.data });

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
    _$ProductListResponseFromJson(json);
}
