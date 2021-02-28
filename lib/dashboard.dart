import 'package:camera/camera.dart';
import 'package:csi_trial_2/CartPage.dart';
import 'package:csi_trial_2/cameraPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/appState.dart';

class Dashboard extends StatefulWidget {
  String username = "";
  String password = "";
  Dashboard({Key key, this.username, this.password}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<CameraDescription> openCamera() async {
    final camera = await availableCameras();
    final cameraFirst = camera.first;
    return cameraFirst;
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    final List<String> allItems = ["Books","Bottle","Milk","Tshirt","Bread","Vegetables"];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello " + appState.username),
        actions: [
          IconButton(icon: Icon(Icons.shopping_bag), onPressed: (){
            Navigator.pushNamed(context, "/cart");
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () {
          openCamera().then((value) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CameraPage(cd: value)));
          });
          print("Open Camera");
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height:150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Wallpaper.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(appState.username),
                  SizedBox(height: 20,),
                  Text("Mobile Number")
                ],
              ),
            ),

            Divider(
              height: 3,
              thickness: 1,
            ),
            ListTile(
              leading:Icon(Icons.shopping_bag),
              title: Text("Cart"),
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>CartPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("Open Camera"),
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Close Drawer"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Text("Account"),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: (){
                appState.setUsername("");
                Navigator.popUntil(context, (route) => false);
                Navigator.pushNamed(context, "/");
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Wallpaper.jpg"), fit: BoxFit.cover)),
        child: Center(
          child:ListView.builder(
                itemCount: allItems.length,
                itemBuilder: (context,index)=>
                  InkWell(
                    onTap: (){
                      print(allItems[index]);
                      Navigator.pushNamed(context, "/product",arguments: allItems[index]);
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 150,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          color: Colors.white30,
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                width: 70,
                                height: 125,
                                child: Image(
                                  image: AssetImage("assets/background.jpg"),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20,0,10,0),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(allItems[index]),
                                          IconButton(icon: Icon(Icons.add), onPressed: (){
                                            appState.addItem(allItems[index]);
                                          })
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Text("Price : 500")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              )
        ),
      ),
    );
  }
}
