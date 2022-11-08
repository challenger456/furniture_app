import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Sofa', 'Park Bench', 'Arm Chair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20,right: index == categories.length -1 ? 0 : 0 ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: index == selectedIndex?
                Colors.white.withOpacity(0.4) : Colors.transparent,
                    borderRadius: BorderRadius.circular(6)
              ),
              child: Text(
                categories[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),),
    );
  }
}
