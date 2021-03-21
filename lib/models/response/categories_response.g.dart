// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return Categories(
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => MealCategory.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
