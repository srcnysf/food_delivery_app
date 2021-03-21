import 'package:json_annotation/json_annotation.dart';
part 'ingredient_item_response.g.dart';

@JsonSerializable()
class IngredientItemResponse {
  final String? idIngredient;
  final String? strIngredient;
  final String? strDescription;
  final String? strType;
  IngredientItemResponse({
    this.idIngredient,
    this.strIngredient,
    this.strDescription,
    this.strType,
  });

  factory IngredientItemResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientItemResponseFromJson(json);
  Map<String, dynamic> toJson() => _$IngredientItemResponseToJson(this);
}
