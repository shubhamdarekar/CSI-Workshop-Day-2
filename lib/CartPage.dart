import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Models/appState.dart';

class CartPage extends StatefulWidget{
  CartPage({Key key}) : super(key : key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Page"),
      ),
      body:appState.items.length == 0? Center(
        child: Text("Your Cart is Empty"),
      ):
      ListView.builder(
        itemCount: appState.items.length,
          itemBuilder:(context, index)=> ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
              icon:Icon(Icons.remove_circle_outline),
              onPressed: (){
                appState.removeItem(appState.items[index]);
              },
            ),
            title: Text(appState.items[index])
          )
      )
    );
  }
}
