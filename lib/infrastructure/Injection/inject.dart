import 'package:get_it/get_it.dart';
import 'inject.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> Configureinjection() async {
  await getIt.init(environment: Environment.prod);
}
