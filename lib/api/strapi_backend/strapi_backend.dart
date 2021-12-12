import 'package:dio/dio.dart';
import 'package:flutter_arch_bloc/api/strapi_backend/entites/product.dart';

Future<ProductListResponse> produtcs({ required Dio dio }) async {
  final r = await dio.get('/products?fields=*&populate=cover,category');
  return ProductListResponse.fromJson(r.data);
}
