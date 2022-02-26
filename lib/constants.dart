import 'package:flutter/material.dart';

class SizeConstants {
  static const double avatarRad = 22.0;
  static const double dividerHeight = 1.0;
  static const Size size = Size(339.0, 320.0);
  static const Size buttonSize = Size(105.0, 32.0);
  static const Size nameSize = Size(199.0, 24.0);
  static const Size ratingSize = Size(double.infinity, 22);
  static const Size starSize = Size(17.46, 17.25);
  static const Size vectorIconSize = Size(7.24, 10.0);
  static const Size ellipseIconSize = Size(5.0, 5.0);
}

class ItemModel {
  final String name;
  final String locale;
  final String detail;
  final int score;
  final int price;
  final int timeDuration;
  final String description;
  ItemModel({
    required this.name,
    required this.locale,
    required this.detail,
    required this.score,
    required this.price,
    required this.timeDuration,
    required this.description,
  });
}
