import 'dart:developer';
import 'package:dw9_delivery_app/app/dto/order_product_dto.dart';
import 'package:dw9_delivery_app/app/pages/home/home_state.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productsRepository;

  HomeController(this._productsRepository) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));

    try {
      final products = await _productsRepository.findAllProducts();
      //throw Exception();
      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } on Exception catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      emit(
        state.copyWith(
            status: HomeStateStatus.error,
            errorMessage: 'Erro ao buscar produtos'),
      );
    }
  }

  void addOrUpdateCart(OrderProductDto orderProduct) {
    final shoppingCart = [
      ...state.shoppingCart
    ]; //faz uma cópia do array antigo
    final orderIndex = shoppingCart
        .indexWhere((element) => element.product == orderProduct.product);
    if (orderIndex > -1) {
      shoppingCart[orderIndex] = orderProduct;
    } else {
      shoppingCart.add(orderProduct);
    }
    emit(
      state.copyWith(shoppingCart: shoppingCart),
    );
  }
}
