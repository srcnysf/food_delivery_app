import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'meal_request.g.dart';

@JsonSerializable()
class MealRequest {
  String? i;
  MealRequest({
    this.i,
  });

  Map<String, dynamic> toJson() => _$MealRequestToJson(this);
}
