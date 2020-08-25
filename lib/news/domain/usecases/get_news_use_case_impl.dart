import 'package:boticario/news/domain/entities/news.dart';
import 'package:boticario/news/domain/error/news_failures.dart';
import 'package:boticario/news/domain/repository/news_repository.dart';
import 'package:boticario/news/domain/usecases/get_news_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetNewsUseCase)
class GetNewsUseCaseImpl implements GetNewsUseCase {
  final NewsRepository newsRepository;

  GetNewsUseCaseImpl(this.newsRepository);

  @override
  Future<Either<NewsFailures, List<News>>> call() => newsRepository.getNews();
}
