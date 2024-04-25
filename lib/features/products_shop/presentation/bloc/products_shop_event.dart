part of 'products_shop_bloc.dart';

abstract class ProductsShopEvent extends Equatable {
  const ProductsShopEvent();

  @override
  List<Object> get props => [];
}

class ProductsLoad extends ProductsShopEvent {
  
}