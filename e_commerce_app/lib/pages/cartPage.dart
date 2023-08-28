import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
    
              //title
              Text('My Cart',
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
              )),
const SizedBox(height:20),

//get the individual item
Expanded(child: ListView.builder(
  itemCount: value.getUserCart().length,
  itemBuilder: (context,index){
  Shoe individualShoe = value.getUserCart()[index];
  //return cart item
return CartItem(shoe:individualShoe);
}))



      ],),
    ));
  }
}