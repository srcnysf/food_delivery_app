import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'area_request.g.dart';

@JsonSerializable()
class AreaRequest {
  String? a;
  AreaRequest({
    this.a,
  });

  Map<String, dynamic> toJson() => _$AreaRequestToJson(this);
}
