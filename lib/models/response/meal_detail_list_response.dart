import 'package:json_annotation/json_annotation.dart';
import 'meal_detail_response.dart';

part 'meal_detail_list_response.g.dart';

@JsonSerializable()
class MealDetailListResponse {
  final List<MealDetailResponse>? meals;
  MealDetailListResponse({
    this.meals,
  });

  factory MealDetailListResponse.fromJson(Map<String, dynamic> json) => _$MealDetailListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MealDetailListResponseToJson(this);
}
