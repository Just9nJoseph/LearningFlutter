import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/widget/drawer.dart';

/*Not much practical , some theory
  More abt Constraints,BuildContext, 3 Trees in flutter
  Immutable means which cannot be changed 
*/
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    var str = "Justin";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Learning Flutter',
        ),
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
      drawer: MyDrawer(),
    );
  }
}
