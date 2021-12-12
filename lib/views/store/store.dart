import 'package:flutter/material.dart';
import 'package:flutter_arch_bloc/views/store/store_bloc.dart';
import 'package:flutter_arch_bloc/views/store/store_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Store extends StatefulWidget {
  final StoreBloc bloc;

  const Store({ Key? key, required this.bloc })
    : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  StoreBloc get _bloc => widget.bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreData>(
      bloc: _bloc,
      builder: (_, data) {
        return StoreView(data: data);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _bloc.init();
  }
}
