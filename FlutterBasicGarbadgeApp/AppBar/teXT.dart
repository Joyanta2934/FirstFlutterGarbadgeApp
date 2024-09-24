import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class teXT extends StatelessWidget{
  const teXT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //child: Image.network("https://asadullahbd.github.io/cloneRabbilSir/assets/img/rabbilVai.png"),
                    height: 150,
                    width: 150,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.fromLTRB(10,20,10,30),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(color: Colors.black, width: 10)
                    ),
                    child: const Text("Text", style: TextStyle(fontSize: 25),),
                  ),

                  Container(
                    height: 150,
                    width: 150,
                    child: Image.network("https://asadullahbd.github.io/cloneRabbilSir/assets/img/rabbilVai.png"),
                  )
                ],
              ),]
        )
    );
  }

}