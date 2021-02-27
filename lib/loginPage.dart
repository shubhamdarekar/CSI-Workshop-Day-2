import 'package:csi_trial_2/dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscure = true;
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Wallpaper.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Username: "),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 200,
                    child: TextField(
                      controller: userNameController,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                ),
                Text("Password: "),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 200,
                    child: TextField(
                      controller: passwordController,
                      obscureText: obscure,
                    )),
                IconButton(
                  icon: obscure
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(userNameController.text);
                  print(passwordController.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard(
                                username: userNameController.text,
                                password: passwordController.text,
                              )));
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
