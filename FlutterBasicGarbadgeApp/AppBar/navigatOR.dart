import 'package:first/AppBar/foRM.dart';
import 'package:first/AppBar/listviEW.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navigatOR extends StatelessWidget{
  const navigatOR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>foRM()));
              }, child: Text("Form Page")),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>listviEW()));
              }, child: Text("ListViewPage")),
        ],
      ),
    );
  }

}