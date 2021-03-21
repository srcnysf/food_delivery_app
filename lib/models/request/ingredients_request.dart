import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'ingredients_request.g.dart';

@JsonSerializable()
class IngredientsRequest {
  String? i;
  IngredientsRequest({
    this.i,
  });

  Map<String, dynamic> toJson() => _$IngredientsRequestToJson(this);
}
