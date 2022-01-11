import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/utils/routes.dart';

class ProjectName extends StatelessWidget {
  const ProjectName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /*Image.asset(
              "assets/images/site_image.png",
              fit: BoxFit.cover,
            ),*/
            SizedBox(height: 40),
            Text(
              "Project Name",
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enter the details of your Project/Site",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter the project name",
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Budget",
                      hintText: "Enter the Budget Amount",
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Owner",
                      hintText: "Enter the Owner name",
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter the Address",
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    child: Text("Sign-up"),
                    style: TextButton.styleFrom(
                      minimumSize: Size(130, 40),
                      backgroundColor: Colors.grey[850],
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
