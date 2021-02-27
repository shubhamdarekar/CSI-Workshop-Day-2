import 'package:camera/camera.dart';
import 'package:csi_trial_2/cameraPage.dart';
import 'package:flutter/material.dart';

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
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello " + widget.username),
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
      drawer: Container(
        color: Colors.white,
        width: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is app drawer"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Wallpaper.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            children: [
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
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
                                    Text("Shubham Darekar"),
                                    IconButton(icon: Icon(Icons.add), onPressed: (){})
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Score:500")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
