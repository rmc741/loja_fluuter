import 'package:br/model/cart_model.dart';
import 'package:br/model/user_model.dart';
import 'package:br/screen_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
        builder: (BuildContext context, Widget child, Model model) {
          return ScopedModel<CartModel>(
            model: CartModel(model),
            child: MaterialApp(
              title: "Fael's Lojinha",
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  primaryColor: Color.fromARGB(255, 211, 118, 130)
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen(),
            ),
          );
        },)
    );
  }
}