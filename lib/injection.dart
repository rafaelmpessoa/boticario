import 'package:boticario/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies({String env = Environment.dev}) =>
    $initGetIt(getIt, environment: env);