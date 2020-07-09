
import 'area_item_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area_list_response.g.dart';

@JsonSerializable()
class AreaListReponse {
  final List<AreaItemResponse> meals;
  AreaListReponse({
    this.meals,
  });

    factory AreaListReponse.fromJson(Map<String, dynamic> json) => _$AreaListReponseFromJson(json);
  Map<String, dynamic> toJson() => _$AreaListReponseToJson(this);
}
