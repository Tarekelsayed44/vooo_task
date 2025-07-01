import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasources/product_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDataSource remote;
  ProductRepositoryImpl(this.remote);

  @override
  Future<List<Product>> getProducts() async {
    return await remote.fetchProducts();
  }
}