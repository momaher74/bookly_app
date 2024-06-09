import 'package:dartz/dartz.dart';
import 'package:ninja_animation/core/errors/failure.dart';
import 'package:ninja_animation/features/home/data/models/book_model/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
