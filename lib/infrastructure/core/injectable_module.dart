import 'package:harry_poter_app/presentation/routes/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get router => AppRouter();
}
