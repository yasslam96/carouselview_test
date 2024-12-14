import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselViewImages extends StatelessWidget {
  CarouselViewImages({super.key});

  List<String> images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CarouselView')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
            child: CarouselView(
              elevation: 2,
              onTap: (tapIndex) {},
              padding: const EdgeInsets.all(10),
              itemExtent: MediaQuery.of(context).size.width - 60,
              itemSnapping: true,
              children: List.generate(images.length, (index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
