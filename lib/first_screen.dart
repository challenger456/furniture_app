import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/second_screen.dart';

import 'Utils/category_list.dart';
import 'Utils/product_card.dart';
import 'Utils/search_bar.dart';
import 'models/product.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa1565c0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffa1565c0),
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              CupertinoIcons.bell,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
          const SearchBar(),
            const CategoryList(),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                      itemBuilder: (context, index) => ProductCard(

                        itemIndex: index,
                        product: products[index],
                        press: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(
  product: products[index],
),));
                        },
                      ),)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
