import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
    name: 'Air Jordan',
       description: 'A perfect fit for your appearance',
        price: "\$""190",
         imagePath: 'lib/images/sneaker1.png'),

         Shoe(
      name: ' Air_Jordan',
       description: 'A perfect fit for your appearance',
        price: "\$""200",
         imagePath: 'lib/images/sneaker2.png'),

      
  ];

  //list of items in user cart
  List<Shoe> userCart =[];

  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }
  
  //add items to the cart
 void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
 }


  //remove items from the cart
 void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
 }

}