import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'search_request.g.dart';

@JsonSerializable()
class SearchRequest {
  String? s;
  SearchRequest({
    this.s,
  });
  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
