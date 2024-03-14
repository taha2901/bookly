import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtom(
            onPressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (!await launchUrl(uri)) {
                throw Exception('Could not launch $uri');
              }
            },
            text: '19.66 \$',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
         Expanded(
          child: CustomButtom(
            text: getText(bookModel),
            backgroundColor:const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius:const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
  
  getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null){
      return 'Not Availble';
    }
    else {
      return 'Preview';
    }
  }
}
