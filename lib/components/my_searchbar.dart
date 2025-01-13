import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const TextField(
          autofocus: true,
          cursorColor: Colors.black26,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black26,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 13,
              horizontal: 30,
            ),
            fillColor: Colors.white,
            hintText: "Search...",
            hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            ),
          ),
        ),
      ),
    );
  }
}
