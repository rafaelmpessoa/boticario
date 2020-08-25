import 'package:boticario/news/domain/entities/news.dart';
import 'package:boticario/news/domain/error/news_failures.dart';
import 'package:dartz/dartz.dart';

abstract class GetNewsUseCase {
  Future<Either<NewsFailures, List<News>>> call();
}
