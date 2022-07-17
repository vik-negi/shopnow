import 'package:flutter/material.dart';
import 'package:shopnow/models/categories.dart';
import 'package:shopnow/screens/ProductDeatilPage.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 18,
        mainAxisSpacing: 25,
        childAspectRatio: 0.65,
      ),
      itemCount: CategoryModel.ProductType.length,
      itemBuilder: (context, i)=> CategoryType(
        press: ()=> Navigator.push(context,
        MaterialPageRoute(builder: (context)=>const ProductDeatilPage())), item: CategoryModel.ProductType[i],
      ),
    );
  }
}

class CategoryType extends StatelessWidget {
  final void Function()? press;
  final Category item;
  const CategoryType({
    Key? key,
    required this.press,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            width: 160,
            height: 180,
            margin: const EdgeInsets.only(bottom: 8),
            decoration : BoxDecoration(
              // color: const Color.fromARGB(255, 255, 255, 255),
              color: Colors.white10,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.network(item.image),
          ),
          // Text(item.name,
          //   style: const TextStyle(
          //       fontSize: 14,
          //       color: Colors.white,
          //       fontWeight: FontWeight.w600,
          //     )
          // ),
          Text.rich(
            textAlign :TextAlign.start,
            TextSpan(
              text: item.name,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                
              )
            )
          ),
          TextButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ), 
          child: Text.rich(
            
            TextSpan(
              text: "${item.totalItem}",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                
              )
            )
          ),
          ),
        ],
      ),
    );
  }
}