import 'package:eleventh/Public/publicEnums.dart';
import 'package:eleventh/Public/publicVar.dart';
import 'package:eleventh/Views/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConuterBasketball());
}

class ConuterBasketball extends StatelessWidget {
  const ConuterBasketball({super.key});
  @override
  Widget build(BuildContext context) {
    PublicVar.highDevice=MediaQuery.of(context).size.height;
    PublicVar.widthDevice=MediaQuery.of(context).size.width;
    return MaterialApp(
      routes: {
        Views.homeView.toString(): (context) => const HomePage(),
      },
      initialRoute: Views.homeView.toString(),
    );
  }
}
