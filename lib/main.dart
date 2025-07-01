import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vooo_task/presentation/bloc/product_event.dart';
import 'presentation/bloc/product_bloc.dart';
import 'presentation/pages/product_list_page.dart';
import 'data/datasources/product_data_source.dart';
import 'data/repositories/product_repository_implement.dart';
import 'domain/usecases/get_products_usecase.dart';

void main() {
  final repository = ProductRepositoryImpl(ProductDataSource());
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  final ProductRepositoryImpl repository;
  const MyApp({required this.repository, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => ProductBloc(GetProductsUseCase(repository))..add(FetchProductsEvent()),
        child: const ProductListPage(),
      ),
    );
  }
}