

import 'package:assesment_task/core/constants.dart';
import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:dio/dio.dart';

class FetchService { 
  Dio dio = Dio();

  Future<List<ProductModel>> fetchProducts() async { 
    var response = await dio.get(Constants.getProductsUrl);
    List<dynamic> response_data = response.data['products'];
    print(response_data);
    

    // convert the json to product model 
    return response_data.map((obj) => ProductModel.fromJson(obj) ).toList();

  }
}