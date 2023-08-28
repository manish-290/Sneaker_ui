import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {

//add shoe to the cart
void addShoeToCart(Shoe shoe){
  Provider.of<Cart>(context,listen:false).addItemToCart(shoe);

  //alert the user shoe added successfully
  showDialog(
    barrierColor: Colors.transparent,
    context: context,
     builder:(context)=> AlertDialog(
      backgroundColor: Color.fromARGB(112, 26, 121, 193),
      icon: Icon(Icons.check_box,color: Colors.white,),
      title:Text('Success',style: TextStyle(color:Colors.white),),
      content: Text('Check your cart!',style: TextStyle(color:Colors.white),),
     ) );
}


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context,value,child)=> Column(
      
      children: [
      //search bar
    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color:Colors.grey[400],
        borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){},
              child: Text('Search',style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold))),
            Icon(Icons.search,color: Colors.white,)
          ],
        ),
      ),
    ),
      //message
  SizedBox(height: 30,),
  Center(child:
   Text('Feel free to surf and know the designation of the products.Enjoy!',
   style: TextStyle(color:Colors.grey),)),
      
      //hot pick shoes
      SizedBox(height: 12,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Hot Pick Shoes 🔥 ',
          style:TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
          Text('See All',
          style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),)
        ],),
      ),

//list of the shoes
Expanded(child: ListView.builder(
  itemCount: 2,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context,index){

  //create a shoe from shopList
  Shoe shoe = value.getShoeList()[index];
  return ShoeTile(
    
    shoe: shoe,
    onTap: () => addShoeToCart(shoe) ,
  );
})),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Divider(
  
    color: Colors.grey,
  
  ),
)


    ],));
  }
}