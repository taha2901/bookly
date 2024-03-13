part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitialStates extends NewestBooksState {}

final class NewestBooksLoadedStates extends NewestBooksState {}

final class NewestBooksFailureStates extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailureStates(this.errMessage);
}

final class NewestBooksSuccessStates extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccessStates(this.books);
}
