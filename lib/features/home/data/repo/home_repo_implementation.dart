import 'package:dartz/dartz.dart';
import 'package:ninja_animation/core/errors/failure.dart';
import 'package:ninja_animation/core/utils/api_service.dart';
import 'package:ninja_animation/features/home/data/models/book_model/BookModel.dart';
import 'package:ninja_animation/features/home/data/repo/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    List<BookModel> books = [];
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=dancing&Filtering=free-ebooks&Sorting=newest');
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      return left(ApiError());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    List<BookModel> books = [];
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=dancing&Filtering=free-ebooks');
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      return left(ApiError());
    }
  }
}
