import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foRM extends StatefulWidget{
   foRM({super.key});

  @override
  State<foRM> createState() => _foRMState();
}

class _foRMState extends State<foRM> {
  ButtonStyle submitButtonStyle= ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 60),
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
  );

      @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: "First Name"),
                ),),
              const Padding(padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: "First Name"),
                ),),
              const Padding(padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: "First Name"),
                ),),
              Padding(padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: submitButtonStyle,
                    child: const Text("Submit"),)
              ),]

        )
    );
      }
}