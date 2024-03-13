//هنا بحدد الفيتشر هتعمل اي بس
//لكن محددتش هتعملو ازاي
// طب لي؟
//عشان في اكتر من طريقه ل هنعملو ازاي زي وانت طالع من بيتك رايح مشوار في كزا طريق للذهاب للمشوار

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //لو فيه ارجيومنتس بتحددها هنا بس الواضح ان انت هنا هتعمل فيتش بس للكتب المميزه والمباعه
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
