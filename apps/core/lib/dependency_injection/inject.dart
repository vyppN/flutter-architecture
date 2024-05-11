import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:product/infrastructure/dependency_injection/inject.dart';

void registerServices() {
  registerCoreServices();
  registerProductServices();
}