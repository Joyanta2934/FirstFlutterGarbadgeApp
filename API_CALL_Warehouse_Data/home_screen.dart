import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Models/PostsModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<PostsModel> getPostApi() async {
    final response = await http.get(
      Uri.parse(
        "http://apps.bitopibd.com:8090/bimobapiv2/api/FabricWarehouseTV/GetFabricWarehouseData?companyId=06",
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return PostsModel.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("API Data"),
        centerTitle: true,
      ),
      body: FutureBuilder<PostsModel>(
        future: getPostApi(),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          if (!snapshot.hasData) {
            return const Center(child: Text("No data"));
          }

          final post = snapshot.data;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Total Stock Aging: ${post?.tQtyStockAging}",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Stock > 1 Year: ${post?.tQtyStockGTh1yr}",
                  style: const TextStyle(fontSize: 16),
                ),
              ),

              const Divider(),

              Expanded(
                child: ListView.builder(
                  itemCount: post?.warehouseList?.length ?? 0,
                  itemBuilder: (context, index) {
                    final warehouse = post?.warehouseList![index];
                    return Card(
                      child: ListTile(
                        tileColor: Colors.blue,
                        title: Text(warehouse?.buyer ?? ''),
                        subtitle: Text(
                          "Year1: ${warehouse?.year1} |Year2: ${warehouse?.year2}|Year3: ${warehouse?.year3} |Total: ${warehouse?.total3Years}",
                        ),
                        //trailing: Text(warehouse.companyID ?? ''),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
