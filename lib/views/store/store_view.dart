import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch_bloc/api/strapi_backend/entites/product.dart';
import 'package:flutter_arch_bloc/views/common/data_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_view.freezed.dart';

@freezed
class StoreData with _$StoreData {
  const factory StoreData({
    required DataState<ProductListResponse> products,
    // required DataState<ProductCategoriesResponse> categories,
  })
    = _StoreData;
}

/* class _Categories extends StatelessWidget {
  final DataState<List<ProductCategory>> categories;

  const _Categories({
    Key? key,
    required this.categories,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
} */

class _Product extends StatelessWidget {
  final Product product;

  const _Product({ Key? key, required this.product })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cover = CachedNetworkImage(
      imageUrl: product.attributes.cover.data.attributes.url,
      imageBuilder: (context, image) => Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200, width: 1),
        ),
      ),
    );

    final name = Text(
      product.attributes.name,
      style: Theme.of(context).textTheme.bodyText1,
    );

    final price = Text(
      product.attributes.name,
      style: Theme.of(context).textTheme.subtitle1,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          cover,
          name,
          price,
        ],
      ),
    );
  }
}

class _Products extends StatelessWidget {
  final DataState<ProductListResponse> products;

  const _Products({
    Key? key,
    required this.products,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return products.when(
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },

      err: (error) {
        return Center(
          child: Text(error.toString()),
        );
      },

      success: (products) {
        return ListView.builder(
          itemCount: products.data.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final product = products.data[index];

            return _Product(product: product);
          },
        );
      }
    );
  }
}

const defaultStoreData = StoreData(
  products: DataState.success(ProductListResponse(data: [])),
  // categories: DataState.loading(),
);

class StoreView extends StatelessWidget {
  final StoreData data;

  const StoreView({
    Key? key,
    required this.data,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Store',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        title,

        // _Categories(categories: data.categories),
        _Products(products: data.products),
      ],
    );
  }
}
