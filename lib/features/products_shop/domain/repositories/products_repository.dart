import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';

abstract class ProductRepository {

  Future<List<ProductModel>> getProducts();
  Future<List<ProductModel>> addProduct();
}