import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
//late String msg;

class ContactFragment extends StatelessWidget{
  final String msg;
  const ContactFragment(this.msg, {super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Activity3 : Came from $msg")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage("Contact Page")),
                );
              },
              child: Text("Go To Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity1("ContactFragment")),
                );
              },
              child: Text("Go To Activity 1"),
            ),
          ],
        ),
      ),
    );
  }
}