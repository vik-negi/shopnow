import 'package:flutter/material.dart';
import 'package:shopnow/widgets/ItemWidget.dart';
import '../models/catalogs.dart';

class CategoryWiseItem extends StatelessWidget {

  const CategoryWiseItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (CatalogModel.items != null &&
              CatalogModel.items.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogModel.items.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return ItemWidget(item: item);
              },
            )
          : const CircularProgressIndicator(),
    );
  }
}