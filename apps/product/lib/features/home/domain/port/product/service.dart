import 'package:product/features/home/domain/entities/product.dart';

abstract class IProductService {
  Future<List<ProductToDisplay>> getByCategory(String category);
  Future<List<String>> getCategories();
}