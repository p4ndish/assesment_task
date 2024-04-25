import 'package:assesment_task/features/products_shop/data/repositories/product_repository_impl.dart';
import 'package:assesment_task/features/products_shop/domain/repositories/products_repository.dart';
import 'package:assesment_task/features/products_shop/domain/usecases/products_usecase.dart';
import 'package:assesment_task/features/products_shop/presentation/bloc/products_shop_bloc.dart';
import 'package:assesment_task/features/products_shop/presentation/pages/products_homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ProductRepository _productRepository = ProductRepositoryImpl();
    final GetAllProductsUsecase _getAllProductsUsecase;
    return BlocProvider(
      create: (context) => ProductsShopBloc(GetAllProductsUsecase(_productRepository))..add(ProductsLoad()),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
