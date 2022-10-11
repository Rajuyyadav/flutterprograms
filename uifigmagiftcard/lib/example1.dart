import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ex1 extends StatefulWidget {
  const Ex1({Key? key}) : super(key: key);

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  final controller = CarouselController();
  final _images = [
    'assets/img_1.png',
    'assets/img_5.png',
    'assets/img_6.png',
    'assets/img_7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
      children: [
        Container(
          child: CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              initialPage: 0,
              height: 180,
              autoPlay: true,
              // enlargeCenterPage: true,

              // scrollDirection: Axis.vertical,
              autoPlayInterval: Duration(seconds: 2),
            ),
            itemCount: _images.length,
            itemBuilder: (context, index, realIndex) {
              // final _image = _images[index];
              return buildimage(_images[index], index);
            },
          ),
        ),        Padding(
          padding: const EdgeInsets.only(left: 16, top: 42),
          child: Text(
            'SSBeauty E-Gift Cards',
            style: TextStyle(fontSize: 15, color:Colors.black,fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 65),
          child: Text(
            'Share The Gift Of Beauty Instantly\n'
            'With Friends And Family. You Select \n'
            'The Amount And They Select Their \n'
            'Own Gift.  ',
            style: TextStyle( color:Colors.black,fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ), // carousel image
         //indicator
      ]
      ),
    );
  }
  Widget buildimage(String image, int index) => Container(
    // color: Colors.red,
    child: Image.asset(
      _images[index],
      fit: BoxFit.cover,
    ),
  );


}
