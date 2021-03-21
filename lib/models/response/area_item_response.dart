import 'package:json_annotation/json_annotation.dart';

part 'area_item_response.g.dart';

@JsonSerializable()
class AreaItemResponse {
  final String? strArea;
  AreaItemResponse({
    this.strArea,
  });

  factory AreaItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AreaItemResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AreaItemResponseToJson(this);

  AreaItemResponse copyWith({
    String? strArea,
  }) {
    return AreaItemResponse(
      strArea: strArea ?? this.strArea,
    );
  }
}
