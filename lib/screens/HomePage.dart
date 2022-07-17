import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopnow/models/catalogs.dart';
import 'package:shopnow/models/categories.dart';
import 'package:shopnow/screens/ProductCategories.dart';
import 'package:shopnow/widgets/CategoryWiseItem.dart';
import 'package:shopnow/widgets/ImageCarousel.dart';
import 'package:shopnow/widgets/ItemWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    "https://rukminim1.flixcart.com/image/200/200/kfzq8i80/television/m/d/d/motorola-32sahdme-original-imafwc5yzz7cyv3r.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/kfzq8i80/television/m/d/d/motorola-32sahdme-original-imafwc5yzz7cyv3r.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/kfzq8i80/television/m/d/d/motorola-32sahdme-original-imafwc5yzz7cyv3r.jpeg?q=70",
    "https://rukminim1.flixcart.com/image/200/200/kfzq8i80/television/m/d/d/motorola-32sahdme-original-imafwc5yzz7cyv3r.jpeg?q=70"
  ];
  // late PageController _pageController;
  @override
  void initState() {
    super.initState();
    // final _pageController = PageController(viewportFraction: 0.8);
    loadData();
    loadCategories();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final jsonFile = await rootBundle.loadString('assets/files/catalog.json');
    final decodedFile = jsonDecode(jsonFile);
    var productsData = decodedFile["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  loadCategories()async{
    await Future.delayed(const Duration(seconds:2));
    final decodedCategory = jsonDecode( await rootBundle.loadString('assets/files/categories.json'));
    var categoryData = decodedCategory["products"];
    CategoryModel.ProductType = List.from(categoryData)
    .map<Category>((type)=>Category.fromMap(type))
    .toList();
    setState(() { });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 25, 26),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 35, bottom: 0, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 32, 36, 39),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const CupertinoSearchTextField(
                        backgroundColor: Color.fromARGB(255, 43, 47, 51),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        placeholder: "Search products...",
                        itemColor: Colors.white70,
                      ),
                      SizedBox(
                        height: 15,
                        child: Container(
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                        child: Container(
                          color: const Color.fromARGB(255, 43, 47, 51),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: const [
                            Text(
                              "Discover",
                              style: TextStyle(
                                color: Color.fromARGB(255, 235, 235, 235),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ImageCarousel(imageUrls: imageUrls),
              Align(
                alignment: Alignment.centerLeft,
                heightFactor: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Get Products",
                      style: TextStyle(
                        color: Color.fromARGB(255, 235, 235, 235),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color.fromARGB(255, 234, 171, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              // const CategoryWiseItem(),
              const ProductCategories(),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: const BottomNavigation()
    );
  }
}




