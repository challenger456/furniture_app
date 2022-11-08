import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Utils/color_dots.dart';
import 'models/product.dart';

class SecondScreen extends StatelessWidget {
  final Product product;

  const SecondScreen({Key? key, required this.product, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffa1565c0),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            icon: const Icon(CupertinoIcons.back)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Back'.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2),
        centerTitle: false,
        actions: const [
          IconButton(onPressed: null, icon: Icon(CupertinoIcons.bag))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.black,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 0.7,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: const BoxDecoration(
                              color: Color(0xfff5f5f5),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Hero(
                            tag: 'image',
                            child: Image.asset(
                              product.image,
                              height: MediaQuery.of(context).size.width * 0.75,
                              width: MediaQuery.of(context).size.width * 0.75,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColorDot(
                          fillColor: Color(0xFF80989A),
                          isSelected: true,
                        ),
                        ColorDot(
                          fillColor: Color(0xFFFF5200),
                          isSelected: false,
                        ),
                        ColorDot(
                          fillColor: Color(0xffa1565c0),
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),

                 Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                    color:Colors.amber,
                    ),
                  ),
                 Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        product.description,
                        style:TextStyle(color: Colors.blueGrey) ,),
                  ),
                 const SizedBox(
                    height: 20,

                  ),

                ],
              ),
            ),
            const SizedBox(height: 40,),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width*0.8,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  color: Colors.amber
),
              child:Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const[
                        IconButton(
                            onPressed: null,
                            icon:Icon(CupertinoIcons.chat_bubble,color: Colors.white,),),
                        Text(' Chat',style: TextStyle(color: Colors.white),),
                      ],
                    ),

                    Row(
                      children:const  [
                        IconButton(
                          onPressed: null,
                            icon: Icon(CupertinoIcons.bag_badge_plus,color: Colors.white,),),
                        Text(' Add to cart',style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
