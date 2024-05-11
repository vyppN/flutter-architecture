import 'package:core_libs/network/http/dio_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void registerCoreServices() {
  getIt.registerSingleton<HttpService>(DioService('https://fakestoreapi.com'));
}