import 'package:flutter/material.dart';
import 'package:flutter_arch_bloc/blocs/dio_bloc.dart';
import 'package:flutter_arch_bloc/views/main_page/main_page.dart';
import 'package:flutter_arch_bloc/views/main_page/main_page_bloc.dart';
import 'package:flutter_arch_bloc/views/main_page/main_page_view.dart';
import 'package:flutter_arch_bloc/views/store/store.dart';
import 'package:flutter_arch_bloc/views/store/store_bloc.dart';
import 'package:flutter_arch_bloc/views/store/store_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts
      .montserratTextTheme(Theme.of(context).textTheme);

    final app = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: textTheme,
      ),
      home: MainPage(
        bloc: MainPageBloc(defaultMainPageData),
        childBuilder: _mainPageChildBuilder,
      ),
    );

    return BlocProvider<DioBloc>(
      create: (context) => DioBloc(defaultDio),
      child: app,
    );
  }

  Widget _mainPageChildBuilder(BuildContext context, NavigationItemId id) {
    final dioBloc = context.read<DioBloc>();
    final dio = dioBloc.state;

    if (id == NavigationItemId.store) {
      return Store(bloc: StoreBloc(
        initialState: defaultStoreData,
        dio: dio
      ));
    }

    return Text(id.name);
  }
}
