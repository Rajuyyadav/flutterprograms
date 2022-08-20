import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreenone extends StatelessWidget {
  const NewScreenone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('hello api'),
      // ),
      body: Stack(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/back_imgpink.png"),
          //         fit: BoxFit.fill),
          //   ),
          //   //     child : Image(
          //   //         image: AssetImage(
          //   //   'assets/back_img_veggie.png',
          //   // ))
          // ),
         Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height:500,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/back_img_veggie.png"),
                    fit: BoxFit.fill),
              ),



            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 450),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                border: Border.all(width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.elliptical(180,50),
                      topLeft: Radius.elliptical(180,50))
              ),
              height:350,


            ),
          ),
        ],
      ),
    );
  }
}
