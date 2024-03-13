import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_tem.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_list_view.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
