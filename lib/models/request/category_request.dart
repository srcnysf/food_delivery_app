import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'category_request.g.dart';

@JsonSerializable()
class CategoryRequest {
  String? c;
  CategoryRequest({
    this.c,
  });

  Map<String, dynamic> toJson() => _$CategoryRequestToJson(this);
}
