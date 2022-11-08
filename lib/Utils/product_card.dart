import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
      Key? key,
    required this.itemIndex,
    required this.product, required this.press,

}): super(key: key);
  final int itemIndex;
  final Product product;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
      height: 160,
      // color: Colors.blueAccent,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex.isEven ? Colors.cyanAccent.shade400 : Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 15.0,
                    ),
                  ]),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                child: Hero(
                  tag: 'image',
                  child: Image.asset(
                    product.image,
                    // "https://w7.pngwing.com/pngs/20/32/png-transparent-brown-wooden-dining-chair-chair-table-wood-dining-room-wooden-chair-furniture-stool-couch.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20*1.5,vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),

                      ),
                      child: Text("\$${product.price}",style: Theme.of(context).textTheme.button,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
