part of 'news_list_bloc.dart';

@freezed
abstract class NewsListState with _$NewsListState {
  const factory NewsListState.initial() = _Initial;
  const factory NewsListState.loading() = _Loading;
  const factory NewsListState.loaded(List<News> news) = _Loaded;
  const factory NewsListState.error(String error, dynamic event) = _Error;
}
