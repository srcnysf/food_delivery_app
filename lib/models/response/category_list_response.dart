import 'package:json_annotation/json_annotation.dart';

import 'category_list_item_response.dart';

part 'category_list_response.g.dart';

@JsonSerializable()
class CategoryListResponse {
  final List<MealCategoryItemResponse>? meals;
  CategoryListResponse({
    this.meals,
  });

    factory CategoryListResponse.fromJson(Map<String, dynamic> json) => _$CategoryListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryListResponseToJson(this);
}