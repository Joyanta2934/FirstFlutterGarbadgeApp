import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:first/main.dart';

class liST extends StatefulWidget{
  liST({super.key});

  @override
  State<liST> createState() => _liSTState();
}

class _liSTState extends State<liST> {
  ButtonStyle myButtonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(25),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
      )
  );

  ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(20),
      backgroundColor: Colors.tealAccent,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
      )
  );

  MyAlert(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: Text("Alert!!!!"),
              content: Text("Do you want to exit?"),
              actions: [
                TextButton(onPressed: () {}, child: Text("Yes")),
                OutlinedButton(onPressed: () {}, child: Text("No")),
                ElevatedButton(onPressed: () {}, child: Text("Very good"))
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://asadullahbd.github.io/cloneRabbilSir/assets/img/rabbilVai.png"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://asadullahbd.github.io/cloneRabbilSir/assets/img/rabbilVai.png"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.network("https://asadullahbd.github.io/cloneRabbilSir/assets/img/rabbilVai.png"),
          )
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: (){MySnacbar("First", context);
              }, child: Text("TextButton")
          ),
          ElevatedButton(
            onPressed: (){MySnacbar("Elevated", context);
            }, child: Text("ElevatedButton"),
            style: myButtonStyle,
          ),
          OutlinedButton(
            onPressed: (){MyAlert(context);
            }, child: Text("OutlinedButton"),
            style: outlinedButtonStyle,

          )
        ],
      ),]
      )
    );
  }
}