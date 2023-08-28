import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
   void Function()?onTap;
   ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:20),
      width:200,decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(13)
      ),
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical:20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          //shoe pic
         ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath)),

          
      
          //description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(shoe.description,
            style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          ),

         Padding(
           padding: const EdgeInsets.all(12.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             //name
            Text(shoe.name,
            style:TextStyle(
              color:Color.fromARGB(255, 254, 253, 253),
              fontWeight: FontWeight.bold,
              fontSize: 24)),
               
           

            //button to add to cart
            GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:Colors.black),
                child: Icon(Icons.add,color: Colors.white,)),
            )
           ],),
           
         ),
          //price
                 Text(shoe.price,
                 style:TextStyle(color:Colors.green)),
        ],),
      )
    );
  }
}