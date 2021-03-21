import 'package:json_annotation/json_annotation.dart';

part 'category_list_item_response.g.dart';

@JsonSerializable()
class MealCategoryItemResponse {
  final String? strCategory;
  MealCategoryItemResponse({
    this.strCategory,
  });
    factory MealCategoryItemResponse.fromJson(Map<String, dynamic> json) => _$MealCategoryItemResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MealCategoryItemResponseToJson(this);
}