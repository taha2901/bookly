
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_tem.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      shrinkWrap: true,
      physics :const NeverScrollableScrollPhysics(),
      // physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookItem(),
        );
      },
    );
  }
}
