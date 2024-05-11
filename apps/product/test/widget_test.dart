// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:product/features/home/data/repositories/product_repository.dart';
import 'package:product/features/home/domain/port/product/repository.dart';
import 'package:product/features/home/domain/port/product/service.dart';
import 'package:product/features/home/domain/services/product_service.dart';

import 'package:product/main.dart';
import 'package:product/mocks/mock_http_service.dart';

void main() {

  getIt.registerSingleton<HttpService>(MockHttpService('mock'));
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());

  test('Get product by electronics category returns electronics products',() async {

    final mockHttpService = getIt.get<HttpService>();
    (mockHttpService as MockHttpService).returnData = [{
      "id": 9,
      "title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
      "price": 64,
      "description": "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      "rating": {
        "rate": 3.3,
        "count": 203
      }
    }];

    final productService = getIt.get<IProductService>();
    final products = await productService.getByCategory('electronics');

    expect(products, isNotEmpty);
    expect(products[0].category, 'electronics');
  });

  test('Get all categories gets categories', () async {
    final mockHttpService = getIt.get<HttpService>();
    (mockHttpService as MockHttpService).returnData = [
      "hello",
      "jewelery",
      "men's clothing",
      "women's clothing"
    ];
    final productService = getIt.get<IProductService>();
    final categories = await productService.getCategories();

    expect(categories, isNotEmpty);
    expect(categories[0], 'hello');

  });
}
