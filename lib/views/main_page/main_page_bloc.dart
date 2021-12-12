import 'package:flutter_arch_bloc/views/main_page/main_page_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageBloc extends Cubit<MainPageData> {
  MainPageBloc(MainPageData initialState)
    : super(initialState);

  set currentNavigationId(NavigationItemId id) =>
    emit(state.copyWith(currentNavigationId: id));
}
