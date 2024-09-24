import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listviEW extends StatelessWidget {
  listviEW({super.key});

  var MyItems = [
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "first"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Second"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Third"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Fourth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "fifth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Sixth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Seventh"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Eighth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Ninth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Tenth"},
    {"img": "https://th.bing.com/th/id/OIP.9vAJCC4beybpde5MN3meywHaCx?rs=1&pid=ImgDetMain", "Title": "Eleventh"},
  ];

  MySNacbar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ListView.builder
            Container(
              height: 220, // Set a fixed height for ListView
              child: ListView.builder(
                itemCount: MyItems.length,
                scrollDirection: Axis.horizontal, // Make ListView horizontal
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onDoubleTap: () {
                      MySNacbar(MyItems[index]['Title']!, context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 160, // Fixed width for each item
                      child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill),
                    ),
                  );
                },
              ),
            ),
            // GridView.builder
            GridView.builder(
              physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
              shrinkWrap: true, // Allow GridView to take only the space it needs
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
                childAspectRatio: 1, // Adjust the aspect ratio
              ),
              itemCount: MyItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onDoubleTap: () {
                    MySNacbar(MyItems[index]['Title']!, context);
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.network(MyItems[index]['img']!, fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
