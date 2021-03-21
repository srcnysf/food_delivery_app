import 'package:json_annotation/json_annotation.dart';

part 'meal_response.g.dart';

@JsonSerializable()
class MealResponse {
  final String? strMeal;
  final String? strMealThumb;
  final String? idMeal;
  MealResponse({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
  });

    factory MealResponse.fromJson(Map<String, dynamic> json) => _$MealResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MealResponseToJson(this);
}
