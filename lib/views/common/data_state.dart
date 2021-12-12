import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.loading() = Loading;
  const factory DataState.err(Object error) = Err;
  const factory DataState.success(T value) = Success;
}
