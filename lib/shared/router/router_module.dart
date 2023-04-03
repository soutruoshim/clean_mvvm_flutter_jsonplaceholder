import 'package:clean_mvvm_flutter/shared/router/router.gr.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigationModule {
  @lazySingleton
  AppRouter get router => AppRouter();

}