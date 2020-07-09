// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealListResponse _$MealListResponseFromJson(Map<String, dynamic> json) {
  return MealListResponse(
    meals: (json['meals'] as List)
        ?.map((e) =>
            e == null ? null : MealResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MealListResponseToJson(MealListResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
