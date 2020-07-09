// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaListReponse _$AreaListReponseFromJson(Map<String, dynamic> json) {
  return AreaListReponse(
    meals: (json['meals'] as List)
        ?.map((e) => e == null
            ? null
            : AreaItemResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AreaListReponseToJson(AreaListReponse instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
