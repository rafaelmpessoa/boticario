import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonLoading extends StatelessWidget {
  final double heigth;
  final double width;
  final double borderRadius;

  const SkeletonLoading({
    Key key,
    @required this.heigth,
    @required this.width,
    this.borderRadius = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.transparent.withOpacity(.7),
      highlightColor: Colors.white,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      ),
    );
  }
}
