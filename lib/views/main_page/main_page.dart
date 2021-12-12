import 'package:flutter/material.dart';
import 'package:flutter_arch_bloc/views/main_page/main_page_bloc.dart';
import 'package:flutter_arch_bloc/views/main_page/main_page_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  final MainPageBloc bloc;
  final Widget Function(BuildContext, NavigationItemId) childBuilder;

  const MainPage({
    Key? key,
    required this.bloc,
    required this.childBuilder,
  })
    : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainPageBloc get _bloc => widget.bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainPageBloc, MainPageData>(
      bloc: _bloc,
      builder: (_, state) {
        return MainPageView(
          data: state,
          onNavigationItemTap: (id) => _bloc.currentNavigationId = id,
          child: widget.childBuilder(context, state.currentNavigationId),
        );
      },
    );
  }
}
