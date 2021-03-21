// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_detail_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealDetailListResponse _$MealDetailListResponseFromJson(
    Map<String, dynamic> json) {
  return MealDetailListResponse(
    meals: (json['meals'] as List<dynamic>?)
        ?.map((e) => MealDetailResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MealDetailListResponseToJson(
        MealDetailListResponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
