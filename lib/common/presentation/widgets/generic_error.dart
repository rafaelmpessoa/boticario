import 'package:boticario/assets.dart';
import 'package:boticario/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class GenericError extends StatelessWidget {
  final Bloc bloc;
  final dynamic event;

  const GenericError({
    Key key,
    @required this.bloc,
    @required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 64,
          ),
          SvgPicture.asset(
            Assets.warning,
            height: 127,
            width: 132,
          ),
          SizedBox(
            height: 49,
          ),
          Text(
            Strings.genericError,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            Strings.tryAgain,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 49,
          ),
          InkWell(
            onTap: () => bloc.add(event),
            child: Text(
              Strings.reload,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
