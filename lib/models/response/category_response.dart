import 'package:json_annotation/json_annotation.dart';

part 'category_response.g.dart';

@JsonSerializable()
class MealCategory {
  final String? idCategory;
  final String? strCategory;
  final String? strCategoryThumb;
  final String? strCategoryDescription;
  MealCategory({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  factory MealCategory.fromJson(Map<String, dynamic> json) =>
      _$MealCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$MealCategoryToJson(this);
}
