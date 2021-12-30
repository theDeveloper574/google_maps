//
//
//
//
//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class Carosl extends StatefulWidget {
//
//   @override
//   _CaroslState createState() => _CaroslState();
// }
//
// class _CaroslState extends State<Carosl> {
//   final items = [
//   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVP-j_zU4-vg-l8f_Sbq3JaagZAmktyl83fA&usqp=CAU",
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRmqbJttYSACAZNT_6aFZcWdIHil-41rhCnQ&usqp=CAU',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CarouselSlider.builder(itemCount: items.length,
//                 itemBuilder: (BuildContext context, int index, realIndex){
//               return Container(
//                 child: Image.network(items[index],fit: BoxFit.fill,),
//               );
//                 },
//                 options: CarouselOptions(
//                   viewportFraction: 1,
//                   height: 300,
//                   enlargeCenterPage: true,
//                   enlargeStrategy: CenterPageEnlargeStrategy.values[1]
//                 ))
//           ],
//         ),
//       )
//     );
//   }
// }
