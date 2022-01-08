import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var str = "Justin";
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Flutter'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days of Flutter by - $str',
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
