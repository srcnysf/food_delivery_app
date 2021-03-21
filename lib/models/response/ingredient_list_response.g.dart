// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientsListResponse _$IngredientsListResponseFromJson(
    Map<String, dynamic> json) {
  return IngredientsListResponse(
    meals: (json['meals'] as List<dynamic>?)
        ?.map((e) => IngredientItemResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$IngredientsListResponseToJson(
        IngredientsListResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
