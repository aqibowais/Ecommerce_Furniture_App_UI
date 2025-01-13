import 'package:ecommerce_furniture_app_ui/model/product_model.dart';
import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  const Selection({super.key});

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        categoryList[index],
                        style: TextStyle(
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.black38,
                          fontWeight: selectedIndex == index
                              ? FontWeight.w500
                              : FontWeight.normal,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 26,
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.orange
                              : Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
