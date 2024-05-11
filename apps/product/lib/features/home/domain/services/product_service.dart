import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/domain/port/product/repository.dart';
import 'package:product/features/home/domain/port/product/service.dart';

class ProductService extends IProductService {
  final IProductRepository repository = getIt.get<IProductRepository>();

  @override
  Future<List<ProductToDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts.map((product) => ProductToDisplay(
        id: product.id.toString(),
        category: product.category!,
        name: product.title!,
        imageUrl: product.image!,
        price: product.price!.toDouble(),
        description: product.description,
    )).toList();
  }

  @override
  Future<List<String>> getCategories() async {
    return await repository.getCategories();
  }

}