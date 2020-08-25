import 'dart:io';

import 'package:boticario/base_remote_data.dart';
import 'package:boticario/news/domain/entities/news.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class NewsRemoteDataSource {
  Future<List<News>> getNews();
}

@LazySingleton(as: NewsRemoteDataSource)
class NewsRemoteDataSourceImpl extends BaseRemoteData
    implements NewsRemoteDataSource {
  @override
  Future<List<News>> getNews() async {
    final response = await Dio().get(
      BaseRemoteData.apiUrl + 'data.json',
    );

    if (response.statusCode == 200) {
      final List jsonNews = response.data['news'];
      if (jsonNews == null) return [];

      return jsonNews.map<News>((e) => News.fromJson(e)).toList();
    } else {
      throw SocketException(response.data.toString());
    }
  }
}
