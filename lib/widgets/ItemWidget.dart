import 'package:flutter/material.dart';
import '../models/catalogs.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) :assert(item != null),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
          decoration : const BoxDecoration(
            color: Color.fromARGB(255, 43, 47, 51),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(item.image,
                fit: BoxFit.fill,
                height: 125,
                width: 125,
              ),
              const SizedBox(width: 25,),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(item.name,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 235, 235, 235),
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('${item.price} products',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 235, 235, 235),
                    ),
                    ),
                  ),
                ],
              ),
              // const Icon(Icons.save, color: Color.fromARGB(255, 235, 235, 235),),
            ],
          ),
        ),
      // ),
      
    );
  }
}