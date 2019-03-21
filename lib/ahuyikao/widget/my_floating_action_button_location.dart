import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyFloatingActionButtonLocation extends FloatingActionButtonLocation{

  final int gapY = 0;

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double fabX = (scaffoldGeometry.scaffoldSize.width - scaffoldGeometry.floatingActionButtonSize.width) / 2.0;
    return Offset(fabX, getDockedY(scaffoldGeometry));
  }

  double getDockedY(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    final double viewHeight = scaffoldGeometry.scaffoldSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    return viewHeight - fabHeight - gapY;
  }
}