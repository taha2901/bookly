import 'package:flutter/material.dart';

import 'best_seller_tem.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomBookImage(
              imageUrl:
                  'http://commondatastorage.googleapis.com/codeskulptor-assets/lathrop/explosion_blue.png'),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.001,
        ),
        const Text(
          'The Jungle Book',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'Rudyard Kipling',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
