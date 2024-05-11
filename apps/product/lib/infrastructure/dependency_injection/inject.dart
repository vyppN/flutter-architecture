import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:product/features/home/data/repositories/product_repository.dart';
import 'package:product/features/home/domain/port/product/repository.dart';
import 'package:product/features/home/domain/port/product/service.dart';
import 'package:product/features/home/domain/services/product_service.dart';

void registerProductServices() {
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());
}