// ignore: file_names
import 'package:ecommerce_furniture_app_ui/components/myclipper.dart';
import 'package:flutter/material.dart';

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: MyClipper(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Hero(
            tag: imageUrl,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
              height: size.height * 0.6,
              width: size.width,
            ),
          ),
        ),
      ),
    );
  }
}
