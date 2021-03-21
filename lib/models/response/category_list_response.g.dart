// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  return CategoryListResponse(
    meals: (json['meals'] as List<dynamic>?)
        ?.map(
            (e) => MealCategoryItemResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryListResponseToJson(
        CategoryListResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
