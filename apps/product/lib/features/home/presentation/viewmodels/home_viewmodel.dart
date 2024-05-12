import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:product/features/home/domain/entities/product.dart';
import 'package:product/features/home/domain/port/product/service.dart';
import 'package:product/features/home/presentation/viewmodels/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_viewmodel.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {

  IProductService service = getIt.get<IProductService>();

  @override
  HomeState build() => HomeState(
      loading: false,
      products: [],
      categories: []
  );

  void getProducts() async {

    state = state.copyWith(
      loading: true
    );

    // Get category ทั้งหมด
    final categories = await service.getCategories();
    // Loop สร้าง Future list ในการเรียกดู product by category เอาไว้
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    // เอา Future list ทั้งหมดมารอ reponse พร้อมๆกัน
    // ข้อดี: ทุกเส้นถูกเรียกพร้อมกัน ใช้เวลาเท่าเส้นที่เรียกนานที่สุด
    // ข้อเสีย: Server รับ load มากขึ้น เพราะถูกเรียกพร้อมกันทีเดียวหลายเส้น ต้องมีการวางแผน scaling ที่ดี
    final products = await Future.wait(productsFetchers);

    state = state.copyWith(
      loading: false,
      products: products,
      categories: categories
    );
  }

  // ignore: avoid_build_context_in_providers
  void onSelectProduct(BuildContext context, ProductToDisplay product) {
    context.pushNamed('detail', extra: product);
  }
}