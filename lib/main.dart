import 'package:boticario/app.dart';
import 'package:boticario/auth/presentation/pages/bloc/auth_bloc.dart';
import 'package:boticario/common/data/database.dart';
import 'package:boticario/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Cubit cubit, Object event) {
    super.onEvent(cubit, event);
    if (!bool.fromEnvironment('dart.vm.product')) print(event);
  }

  @override
  void onTransition(Cubit cubit, Transition transition) {
    super.onTransition(cubit, transition);
    if (!bool.fromEnvironment('dart.vm.product')) print(transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    super.onError(cubit, error, stacktrace);
    if (!bool.fromEnvironment('dart.vm.product')) print(error);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  // moorRuntimeOptions.defaultSerializer = const DateTimeAsStringSerializer();

  configureDependencies(
    env: bool.fromEnvironment('dart.vm.product') == true
        ? Environment.prod
        : Environment.dev,
  );

  runApp(MyApp());
}
