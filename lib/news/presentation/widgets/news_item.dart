import 'dart:convert';

import 'package:boticario/constant.dart';
import 'package:boticario/news/domain/entities/news.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final News news;

  const NewsItem({Key key, @required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 60,
                child: Icon(
                  Icons.person_pin,
                  size: 100,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(kvpading),
              child: Column(
                children: [
                  Text(
                    news.user.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: khpading,
                  ),
                  Text(
                    news.message.content,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
