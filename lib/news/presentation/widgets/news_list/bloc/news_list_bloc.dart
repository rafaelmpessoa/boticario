import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:boticario/news/domain/converter/news_converter.dart';
import 'package:boticario/news/domain/entities/news.dart';
import 'package:boticario/news/domain/usecases/get_news_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'news_list_event.dart';
part 'news_list_state.dart';
part 'news_list_bloc.freezed.dart';

@injectable
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  final GetNewsUseCase getNewsUseCase;
  NewsListBloc(this.getNewsUseCase) : super(_Initial());

  @override
  Stream<NewsListState> mapEventToState(
    NewsListEvent event,
  ) async* {
    yield* event.map(
      started: (_) => _mapEventToFetchNews(event),
    );
  }

  Stream<NewsListState> _mapEventToFetchNews(NewsListEvent event) async* {
    yield NewsListState.loading();
    final result = await getNewsUseCase();

    yield* result.fold(
      (l) async* {
        yield NewsListState.error(NewsConverter.newsFailureInString(l), event);
      },
      (news) async* {
        yield NewsListState.loaded(news);
      },
    );
  }
}
