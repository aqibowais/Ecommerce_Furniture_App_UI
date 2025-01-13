import 'package:ecommerce_furniture_app_ui/components/item_details.dart';
import 'package:ecommerce_furniture_app_ui/components/product_img.dart';
import 'package:ecommerce_furniture_app_ui/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.products});
  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ProductDetailImage(
                imageUrl: products.imageUrl,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ItemDetails(
                product: products,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
