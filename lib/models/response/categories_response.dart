import 'package:food_delivery_app/models/response/category_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable()
class Categories {
  final List<MealCategory> categories;
  Categories({
    this.categories,
  });
  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}