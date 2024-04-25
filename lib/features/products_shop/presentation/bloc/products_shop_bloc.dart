import 'package:assesment_task/features/products_shop/domain/entities/product_model.dart';
import 'package:assesment_task/features/products_shop/domain/usecases/products_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'products_shop_event.dart';
part 'products_shop_state.dart';

class ProductsShopBloc extends Bloc<ProductsShopEvent, ProductsShopState> {
  final GetAllProductsUsecase _getAllProductsUsecase;
  ProductsShopBloc(this._getAllProductsUsecase) : super(ProductsShopLoading()) {
    on<ProductsLoad>((event, emit) async {
      // TODO: implement event handler

      emit( 
        ProductsShopLoaded(await _getAllProductsUsecase.call())


      );
    });
  }
}
