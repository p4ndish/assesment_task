part of 'products_shop_bloc.dart';

abstract class ProductsShopState extends Equatable {
  const ProductsShopState();  

  @override
  List<Object> get props => [];
}
class ProductsShopInitial extends ProductsShopState {}
class ProductsShopLoading extends ProductsShopState {}

class ProductsShopLoaded extends ProductsShopState {
  final List<ProductModel> products;

  const ProductsShopLoaded(this.products);
  @override
  // TODO: implement props
  List<Object> get props => [products];
}
