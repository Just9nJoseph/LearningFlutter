import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changedState = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter you Username ",
                      ),
                      onChanged: (value) {
                        //onChanged returns a value
                        name = value; //that will be given to name
                        //after this we need to rebuild whole project
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter you password ",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    /*ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(100, 30),
                      ),
                      onPressed: () {
                        //Navigator.push(context, route)    --also can be used
                        Navigator.pushNamed(
                            context,
                            MyRoutes
                                .projectRoute); //but prefered one is this one
                      },
                    )*/
                    //Instead of Elevated button animated button (Simple Animations)
                    //Container() - an empty box
                    //how to make any widget clickable
                    //  -> gesturedetector(no feedback) and -> inkwell(gives feedback ie, like ripple effect )
                    InkWell(
                      onTap: () async {
                        //Navigator.pushNamed(context, MyRoutes.projectRoute);
                        setState(() {
                          changedState = true;
                        });
                        await Future.delayed(Duration(
                            milliseconds: 600)); //wait for 600 milliseconds
                        Navigator.pushNamed(context, MyRoutes.projectRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 600),
                        width: changedState ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changedState
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                        //Decorating the container
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: changedState
                                ? BorderRadius.circular(50)
                                : BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
