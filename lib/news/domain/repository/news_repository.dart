import 'package:boticario/news/domain/entities/news.dart';
import 'package:boticario/news/domain/error/news_failures.dart';
import 'package:dartz/dartz.dart';

abstract class NewsRepository {
  Future<Either<NewsFailures, List<News>>> getNews();
}
