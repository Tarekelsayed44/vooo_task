import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_event.dart';
import 'product_state.dart';
import '../../domain/usecases/get_products_usecase.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase getProducts;
  ProductBloc(this.getProducts) : super(ProductLoadingState()) {
    on<FetchProductsEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final products = await getProducts();
        emit(ProductLoadedState(products));
      } catch (e) {
        emit(ProductErrorState('Failed to load products'));
      }
    });
  }
}