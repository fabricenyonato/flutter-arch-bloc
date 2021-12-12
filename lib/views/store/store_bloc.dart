import 'package:dio/dio.dart';
import 'package:flutter_arch_bloc/views/common/data_state.dart';
import 'package:flutter_arch_bloc/views/store/store_view.dart';
import 'package:flutter_arch_bloc/api/strapi_backend/strapi_backend.dart' as api;
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreBloc extends Cubit<StoreData> {
  final Dio dio;

  StoreBloc({
    required StoreData initialState,
    required this.dio,
  })
    : super(initialState);

  Future<void> init() {
    emit(state.copyWith(products: const DataState.loading()));

    return api.produtcs(dio: dio)
      .then((products) => emit(state.copyWith(products: DataState.success(products))))
      .catchError((error) => emit(state.copyWith(products: DataState.err(error))));
  }
}
