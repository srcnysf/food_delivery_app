import 'package:food_delivery_app/models/response/meal_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_list_response.g.dart';

@JsonSerializable()
class MealListResponse {
  final List<MealResponse> meals;
  MealListResponse({
    this.meals,
  });

  factory MealListResponse.fromJson(Map<String, dynamic> json) =>
      _$MealListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MealListResponseToJson(this);
}
