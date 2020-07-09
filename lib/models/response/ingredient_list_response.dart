import 'package:food_delivery_app/models/response/ingredient_item_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ingredient_list_response.g.dart';

@JsonSerializable()
class IngredientsListResponse {
  final List<IngredientItemResponse> meals;
  IngredientsListResponse({
    this.meals,
  });

  factory IngredientsListResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientsListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientsListResponseToJson(this);
}
