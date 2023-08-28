import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/pages/HomePage.dart';
import 'package:e_commerce_app/pages/IntroPages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(NikeStore());
}

class NikeStore extends StatelessWidget {
  const NikeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Cart(),
      builder: ((context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IntroPages()
    )),
      );
  }
}