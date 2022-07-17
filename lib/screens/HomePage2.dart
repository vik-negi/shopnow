import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:shopnow/models/catalogs.dart';
import 'package:shopnow/widgets/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  static List items=[
    Item(
      id : 1,
      name: "iPhone 12 Pro",
      des: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    ),
    Item(
      id : 1,
      name: "iPhone 12 Pro",
      des: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    ),
    Item(
      id : 1,
      name: "iPhone 12 Pro",
      des: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    ),

  ];

  // loadData() async {
  //   await Future.delayed(const Duration(seconds: 2));
  //   final jsonFile = await rootBundle.loadString('assets/files/catalog.json');
  //   final decodedFile = jsonDecode(jsonFile);
  //   var productsData = decodedFile["products"];
  //   CatalogModel.items = List.from(productsData)
  //       .map<Item>((item) => Item.fromMap(item))
  //       .toList();
  //   print(CatalogModel.items[2].name);
  //   setState(() {});
  // }
  funcc(){
    print(items[1].name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 25, 26),
      body: 
      SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: const Color.fromARGB(255, 32, 36, 39),
            //   ),
              // child: Padding(
                // padding: const EdgeInsets.all(15),
                // child: Column(
                  // children: [
                    // const CupertinoSearchTextField(
                    //   backgroundColor: Color.fromARGB(255, 43, 47, 51),
                    //   padding:
                    //       EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    //   placeholder: "Search products...",
                    //   itemColor: Colors.white70,
                    // ),
                    // SizedBox(
                    //   height: 15,
                    //   child: Container(
                    //     height: 20,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 4,
                    //   child: Container(
                    //     color: const Color.fromARGB(255, 43, 47, 51),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 20),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         "Discover",
                    //         style: TextStyle(
                    //           color: Color.fromARGB(255, 235, 235, 235),
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //           letterSpacing: 1.5,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // Container(
                      // child: (CatalogModel.items != null &&
                      //         CatalogModel.items.isNotEmpty)
                      //     ? 
                          // ListView.builder(
                          //     itemCount: CatalogModel.items.length,
                          //     itemBuilder: (context, index) {
                          //       final item = CatalogModel.items[index];
                          //       return Card(
                          //         child: Row(children: [
                          //           Image.network(item.image),
                          //           Text(item.name)
                          //         ])
                          //       );
                          //     },
                          //   )
                          
                          // : const CircularProgressIndicator(),
                          // Column(
                          //   children: [
                          //     const Text("knk"),
                          //     TextButton(onPressed: (){
                          //       funcc();
                          //     }, child: const Text("Name",
                          //       style: TextStyle(
                          //         color: Colors.white,
                          //       )
                          //     )),
                              ListView.builder(itemBuilder: (context, i){
                                return Card(
                                  child: ListTile(
                                    leading :Image.network(items[i].image),
                                    title :Text(items[i].name)
                                  )
                                );
                              },
                              itemCount: items.length,
                              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                              ),
                            // ],
                          // )
                    // )
                  ],
                ),
      ),
              // ),
            // ],
          // )),
    );
  }
}
