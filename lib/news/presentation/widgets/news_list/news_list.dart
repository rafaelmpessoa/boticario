import 'package:boticario/common/presentation/widgets/generic_error.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/news/presentation/widgets/news_item.dart';
import 'package:boticario/news/presentation/widgets/news_list/bloc/news_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsListBloc, NewsListState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (s) => ListView.separated(
            padding: EdgeInsets.all(khpading),
            itemCount: s.news.length,
            separatorBuilder: (_, __) => SizedBox(
              height: kvpading,
            ),
            itemBuilder: (_, index) => NewsItem(
              news: s.news[index],
            ),
          ),
          error: (s) => GenericError(
            bloc: context.bloc<NewsListBloc>(),
            event: s.event,
          ),
        );
      },
    );
  }
}
