import 'dart:io';

import 'package:boticario/news/data/data_source/news_remote_data_source.dart';
import 'package:boticario/news/domain/entities/news.dart';
import 'package:boticario/news/domain/error/news_failures.dart';
import 'package:boticario/news/domain/repository/news_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;

  NewsRepositoryImpl(this.newsRemoteDataSource);

  @override
  Future<Either<NewsFailures, List<News>>> getNews() async {
    try {
      final result = await newsRemoteDataSource.getNews();
      return right(result);
    } on SocketException catch (e) {
      return left(NewsFailures.serverError());
    } catch (e) {
      return left(NewsFailures.unexpected());
    }
  }
}
