import 'package:e_commerce_app/pages/HomePage.dart';
import 'package:flutter/material.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
        body:Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('lib/images/nike1.png',height: 240,),
              ),
              const SizedBox(height: 48,),
              //title
              Text('GO FOR IT',
              style:TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              )),

              //subtitle
              const SizedBox(height:24),
              Text('Brand new Sneakers and custom kicks made with premium quality',
              style:TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,),

              const SizedBox(height:50),
              //button
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  color: Colors.black87
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text('Shop now!',
                      style:TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold
                        
                      )),
                    ),
                  )
                ),
              )
                  
              
             
            ],),
          ),
        )
      );
  }
}