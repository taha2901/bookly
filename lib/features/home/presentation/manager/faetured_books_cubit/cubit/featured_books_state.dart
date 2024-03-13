part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLodedState extends FeaturedBooksState {}

final class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailureState(this.errMessage);
}

final class FeaturedBooksSuccessState extends FeaturedBooksState {
  //بم اني بتعامل مع ليست يبقا احط فيه البيانات جوه الساتس دي
  final List<BookModel> books;

  const FeaturedBooksSuccessState(this.books);
}
