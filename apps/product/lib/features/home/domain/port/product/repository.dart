import 'package:product/features/home/data/models/product.dart';

abstract class IProductRepository {
  Future<List<Product>> getByCategory(String category);
  Future<List<String>> getCategories();
}

