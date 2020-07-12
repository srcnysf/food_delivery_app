import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_detail_response.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class MealDetailResponse extends HiveObject {
  @HiveField(0)
  final String idMeal;
  @HiveField(1)
  final String strMeal;
  @HiveField(2)
  final String strDrinkAlternate;
  @HiveField(3)
  final String strCategory;
  @HiveField(4)
  final String strArea;
  @HiveField(5)
  final String strInstructions;
  @HiveField(6)
  final String strMealThumb;
  @HiveField(7)
  final String strTags;
  @HiveField(8)
  final String strYoutube;
  @HiveField(9)
  final String strIngredient1;
  @HiveField(10)
  final String strIngredient2;
  @HiveField(11)
  final String strIngredient3;
  @HiveField(12)
  final String strIngredient4;
  @HiveField(13)
  final String strIngredient5;
  @HiveField(14)
  final String strIngredient6;
  @HiveField(15)
  final String strIngredient7;
  @HiveField(16)
  final String strIngredient8;
  @HiveField(17)
  final String strIngredient9;
  @HiveField(18)
  final String strIngredient10;
  @HiveField(19)
  final String strIngredient11;
  @HiveField(20)
  final String strIngredient12;
  @HiveField(21)
  final String strIngredient13;
  @HiveField(22)
  final String strIngredient14;
  @HiveField(23)
  final String strIngredient15;
  @HiveField(24)
  final String strIngredient16;
  @HiveField(25)
  final String strIngredient17;
  @HiveField(26)
  final String strIngredient18;
  @HiveField(27)
  final String strIngredient19;
  @HiveField(28)
  final String strIngredient20;
  @HiveField(29)
  final String strMeasure1;
  @HiveField(30)
  final String strMeasure2;
  @HiveField(31)
  final String strMeasure3;
  @HiveField(32)
  final String strMeasure4;
  @HiveField(33)
  final String strMeasure5;
  @HiveField(34)
  final String strMeasure6;
  @HiveField(35)
  final String strMeasure7;
  @HiveField(36)
  final String strMeasure8;
  @HiveField(37)
  final String strMeasure9;
  @HiveField(38)
  final String strMeasure10;
  @HiveField(40)
  final String strMeasure11;
  @HiveField(41)
  final String strMeasure12;
  @HiveField(42)
  final String strMeasure13;
  @HiveField(43)
  final String strMeasure14;
  @HiveField(44)
  final String strMeasure15;
  @HiveField(45)
  final String strMeasure16;
  @HiveField(46)
  final String strMeasure17;
  @HiveField(47)
  final String strMeasure18;
  @HiveField(48)
  final String strMeasure19;
  @HiveField(49)
  final String strMeasure20;
  @HiveField(50)
  final String strSource;
  @HiveField(51)
  final DateTime dateModified;

  MealDetailResponse({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.dateModified,
  });

  factory MealDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MealDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MealDetailResponseToJson(this);
}
