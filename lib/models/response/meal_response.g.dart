// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealResponse _$MealResponseFromJson(Map<String, dynamic> json) {
  return MealResponse(
    strMeal: json['strMeal'] as String,
    strMealThumb: json['strMealThumb'] as String,
    idMeal: json['idMeal'] as String,
  );
}

Map<String, dynamic> _$MealResponseToJson(MealResponse instance) =>
    <String, dynamic>{
      'strMeal': instance.strMeal,
      'strMealThumb': instance.strMealThumb,
      'idMeal': instance.idMeal,
    };
