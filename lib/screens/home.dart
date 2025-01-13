import 'package:ecommerce_furniture_app_ui/components/my_appbar.dart';
import 'package:ecommerce_furniture_app_ui/components/my_searchbar.dart';
import 'package:ecommerce_furniture_app_ui/components/products.dart';
import 'package:ecommerce_furniture_app_ui/components/selectionBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(),
          MySearchBar(),
          Selection(),
          Products(),
        ],
      )),
    );
  }
}
