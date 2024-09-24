
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppBar/buttON.dart';
import 'AppBar/foRM.dart';
import 'AppBar/liST.dart';
import 'AppBar/listviEW.dart';
import 'AppBar/navigatOR.dart';
import 'AppBar/teXT.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
              elevation: 20,
              title: const Text("Hello"),
              bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.text_format),text: "Text",),
                  Tab(icon: Icon(Icons.list),text: "Row View",),
                  Tab(icon: Icon(Icons.smart_button),text: "Button",),
                  Tab(icon: Icon(Icons.home),text: "Form Fillup",),
                  Tab(icon: Icon(Icons.list_alt_outlined),text: "Dynamic List VIew",),
                  Tab(icon: Icon(Icons.navigation_rounded),text: "Navigation Property",),
                ],
              ),
              //titleSpacing: 0, // Spacing of title
              //centerTitle: true,
              //toolbarHeight: 60,
              //toolbarOpacity: 1,
              backgroundColor: Colors.white70,
              actions: [
                IconButton(
                  onPressed: () {
                    MySnacbar("Comment", context);
                  },
                  icon: const Icon(Icons.comment),
                ),
                IconButton(
                  onPressed: () {
                    MySnacbar("Mail: sarkerjoy05@gmail.com", context);
                  },
                  icon: const Icon(Icons.mail),
                ),
                IconButton(
                  onPressed: () {
                    MySnacbar("Setting", context);
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),


            floatingActionButton: FloatingActionButton(
                elevation: 10,
                onPressed: () {
                  MySnacbar("Hii", context);
                },
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: const StadiumBorder(), // Except elevation, child, this won't work
                child: const Icon(Icons.add)
            ),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 1,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu")
              ],
              onTap: (int index) {
                if (index == 0) {
                  MySnacbar("This is Home Bottom", context);
                } else if (index == 1) {
                  MySnacbar("This is Menu Bottom", context);
                } else {
                  MySnacbar("Something is Wrong", context);
                }
              },
            ),

            drawer: Drawer(
              backgroundColor: Colors.purple,
              child: ListView(
                children: [
                  const DrawerHeader(
                    curve: Curves.fastOutSlowIn,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.red, // Drawer header background color
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, // Center the contents
                      crossAxisAlignment: CrossAxisAlignment.center, // Align horizontally
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top:5),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                "https://asianwiki.com/images/2/23/Joy_Red_Velvet-p2.jpg"),
                          ),
                        ),
                        SizedBox(height: 5), // Space between avatar and text
                        Text(
                          "Joyanta Sarker",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          "joyanta15-2934@diu.edu.bd",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      "Drawer Body",
                      style: TextStyle(
                        //backgroundColor: Colors.green,
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      MySnacbar("This is home", context);
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text("Phone Number"),
                    onTap: () {
                      MySnacbar("01829130344", context);
                    },
                  ),
                ],
              ),
            ),

            body: TabBarView(
                    children: [
                      teXT(),
                      liST(),
                      buttON(),
                      foRM(),
                      listviEW(),
                      navigatOR(),
                    ]),
            )
    );
  }











  }

  MySnacbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 100),
        content: Text(message),
      ),
    );
  }

