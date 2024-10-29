import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SvgIcon extends StatelessWidget {
  final String assetName;
  final Color color;
  final double size;

  const SvgIcon({required this.assetName, required this.color, this.size = 24.0});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      color: color,
      width: 26,
      height: 26,
    );
  }
}