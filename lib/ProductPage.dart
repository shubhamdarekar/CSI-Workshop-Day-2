import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/appState.dart';
class ProductPage extends StatelessWidget{
  ProductPage({Key key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    final String name= ModalRoute.of(context).settings.arguments;
    final appState = Provider.of<AppState>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                height: 200,
                child: Image(image: AssetImage("assets/background.jpg"),),
              ),
              Text(name,
              style: TextStyle(
                fontSize: 35
              ),
              ),
              Text("Price : 500",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              ElevatedButton(onPressed: (){
                appState.addItem(name);
                Navigator.pop(context);
                Navigator.pushNamed(context, "/cart");
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart),
                  Text("Add To cart")
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
