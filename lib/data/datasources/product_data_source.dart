import 'package:dio/dio.dart';
import '../models/product_model.dart';

class ProductDataSource {
  Future<List<ProductModel>> fetchProducts() async {
    final response = await Dio().get('https://api.escuelajs.co/api/v1/products');
    final List data = response.data;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}