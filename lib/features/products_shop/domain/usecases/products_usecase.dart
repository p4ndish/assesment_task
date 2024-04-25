import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:assesment_task/features/products_shop/domain/repositories/products_repository.dart';

class GetAllProductsUsecase { 
  final ProductRepository _productRepository;

  GetAllProductsUsecase(this._productRepository);
  Future<List<ProductModel>> call() async {
    return await _productRepository.getProducts();
  }
}