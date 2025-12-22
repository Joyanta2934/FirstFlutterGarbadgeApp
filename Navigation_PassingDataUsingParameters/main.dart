import 'package:flutter/material.dart';
import 'package:my_first_project/Fragments/ContactFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage(""));
  }
}



class MyHomePage extends StatelessWidget {
  final String msg;
  const MyHomePage( this.msg,{ super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("HomePage : Came from $msg")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity1("MyHomePage")),
                );
              },
              child: Text("Go Activity1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity2("MyHomePage")),
                );
              },
              child: Text("Go Activity2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactFragment("MyHomePage")),
                );
              },
              child: Text("Go Activity3 - Contact Gragment"),
            ),
          ],
        ),
      )
    );
  }
}

class Activity1 extends StatelessWidget {
  final String msg;
  const Activity1(this.msg,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Activity 1 : Came from $msg")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Activity2("Activity1")),
                    );
                  },
                  child: Text("Activity 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactFragment("Activity1")),
                    );
                  },
                  child: Text("Go To Activity3"),
                ),
              ],
            )
        )
    );
  }
}

class Activity2 extends StatelessWidget {
  final String msg;
  const Activity2(this.msg,{super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Activity2 : Came from $msg")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage("Activity2")),
                  );
                },
                child: Text("Go To Home"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactFragment("Activity2")),
                  );
                },
                child: Text("Go To Activity 3"),
              ),
            ],
          ),
        ) ,
    );
  }
}
