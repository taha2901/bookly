import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_states.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksCubitInitial());
  final HomeRepo homeRepo;
   Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksCubitLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksError(failure.errMessage));
      },
      (books) {
        emit(
          SimilarBooksSuccess(books),
        );
      },
    );
  }
}
