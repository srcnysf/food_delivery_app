// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientItemResponse _$IngredientItemResponseFromJson(
    Map<String, dynamic> json) {
  return IngredientItemResponse(
    idIngredient: json['idIngredient'] as String?,
    strIngredient: json['strIngredient'] as String?,
    strDescription: json['strDescription'] as String?,
    strType: json['strType'] as String?,
  );
}

Map<String, dynamic> _$IngredientItemResponseToJson(
        IngredientItemResponse instance) =>
    <String, dynamic>{
      'idIngredient': instance.idIngredient,
      'strIngredient': instance.strIngredient,
      'strDescription': instance.strDescription,
      'strType': instance.strType,
    };
