import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        description: 'Melhor tenis de todos os tempos',
        price: '99.99',
        imagePath: 'images/airjordan.png'),
    Shoe(
        name: 'KD Trey',
        description:
            'Melhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os tempos',
        price: '200.00',
        imagePath: 'images/kdtrey.png'),
    Shoe(
        name: 'Kyrei',
        description:
            'Melhor teMelhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os temposnis de todos os tempos',
        price: '79.99',
        imagePath: 'images/kyrie.png'),
    Shoe(
        name: 'Tenis Nike X',
        description:
            'MelhoMelhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os temposMelhor tenis de todos os temposr tenis de todos os tempos',
        price: '349.99',
        imagePath: 'images/airjordan.png'),
    Shoe(
        name: 'Tenis Nike X',
        description:
            'Melhor tenis de tMelhor tenis de todos os temposMelhor tenis de todos os temposodos os tempos',
        price: '199.99',
        imagePath: 'images/zoomfreak.png'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
