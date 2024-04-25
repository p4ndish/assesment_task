import 'package:assesment_task/features/products_shop/data/datasources/remote_fetch.dart';
import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:assesment_task/features/products_shop/domain/repositories/products_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final FetchService service = FetchService();
  @override
  Future<List<ProductModel>> addProduct() {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    // TODO: implement getProducts
    try{
      
      return await service.fetchProducts();
    }catch(e) { 

      throw Exception(e);
    }
  }
  
}