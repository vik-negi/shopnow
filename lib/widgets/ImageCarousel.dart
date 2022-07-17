import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
          itemCount: imageUrls.length,
          pageSnapping: true,
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(imageUrls[i]),
            );
          }),
    );
  }
}