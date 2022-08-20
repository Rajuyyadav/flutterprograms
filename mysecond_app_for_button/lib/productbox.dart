
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pageproduct extends StatelessWidget {
  const pageproduct({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
          centerTitle: true,
          leading: Icon(Icons.star_border_outlined),

        ),
        body: Center(

          child: ListView(
              padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),

              children: [
                ProductBox(
                    name: "Tablet",
                    description: "Tablet is a popular device for official meetings",
                    price: 25000,
                    image: "tablet_img.png"
                ),
                // ProductBoxpage('Laptop', 'laptop is most productive development tool', 100,'laptop_img.png'),
                //
                // ProductBoxpage('tablet', 'tablet is the most useful device ever for meeting ', 50,'tablet_img.png'),
                ProductBox(
                    name: "Laptop",
                    description: "Laptop is most famous electronic device",
                    price: 35000,
                    image: "laptop_img.png"
                ),
              ],
            ),
          ),
        ),
      );



  }
}
class ProductBox extends StatelessWidget {
  const ProductBox({Key? key ,required this.name, required this.description,
    required this.price, required this.image}) : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Card(
        margin: EdgeInsets.only(bottom: 5,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Image.asset("assets/" + image),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        this.name, style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )
                    ),

                    Text(this.description),
                    Text('Price: Rs.'+this.price.toString()),

                  ],


              ),
              ),
            )


          ],
        ),
      ),
    );
  }
}

// class ProductBox extends StatelessWidget {
//
//   final String name;
//   final String description;
//   final int price;
//   final String image;
//
//   Product(this.name, this.description, this.price, this.image);
// }