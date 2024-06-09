import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ninja_animation/features/home/data/models/book_model/BookModel.dart';
import 'package:ninja_animation/features/home/data/repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepo}) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  List<BookModel> featuredBooks = [];

  void fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    debugPrint("Start *************** ") ;
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((error) {
      debugPrint("error $error");
      emit(FeaturedBooksError());
    }, (books) {
      featuredBooks = books;
      debugPrint(featuredBooks.toString());
      emit(FeaturedBooksSuccess());
    });
  }

}
