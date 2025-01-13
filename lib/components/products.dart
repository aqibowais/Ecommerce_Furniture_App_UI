// ignore_for_file: avoid_unnecessary_containers

import 'package:ecommerce_furniture_app_ui/model/product_model.dart';
import 'package:ecommerce_furniture_app_ui/screens/detail_page.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: size.height / size.width * 0.3,
          ),
          itemCount: productItems.length,
          itemBuilder: (context, index) {
            final product = productItems[index];
            return Transform.translate(
              offset: Offset(0, index.isOdd ? 28 : 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(products: product),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Hero(
                          tag: product.imageUrl,
                          child: Image(
                            height: size.height * 0.25,
                            width: size.width * 0.45,
                            image: AssetImage(product.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        product.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        product.manufacturer,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
