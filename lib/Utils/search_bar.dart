import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          focusColor: Colors.white,
          fillColor: Colors.white.withOpacity(0.4),
          // fillColor: Color(0xffa82b1ff),
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(CupertinoIcons.search, color: Colors.white),
        ),
      ),
    );
  }
}
