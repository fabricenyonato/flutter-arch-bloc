import 'package:dio/dio.dart';
import 'package:flutter_arch_bloc/vars.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final defaultDio = Dio(BaseOptions(
  baseUrl: '$baseUrl/api',
  headers: { 'content-type': 'application/json' }
));

class DioBloc extends Cubit<Dio> {
  DioBloc(Dio initialState)
    : super(initialState);

  set dio(Dio dio) => emit(dio);
}
