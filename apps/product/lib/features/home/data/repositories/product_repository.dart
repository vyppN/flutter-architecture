import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:product/features/home/data/models/product.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:product/features/home/domain/port/product/repository.dart';

class ProductRepository implements IProductRepository {

  final HttpService httpService = getIt.get<HttpService>();

  @override
  Future<List<Product>> getByCategory(String category) async {
    final response = await httpService.get('/products/category/$category');
    List<Product> products = [];
    for(dynamic res in response) {
      products.add(Product.fromJson(res));
    }
    return products;
  }

  @override
  Future<List<String>> getCategories() async {
    final response = await httpService.get('/products/categories');
    return (response as List<dynamic>).map((e) => e.toString()).toList();
  }

}