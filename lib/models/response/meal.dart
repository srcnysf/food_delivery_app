import 'dart:convert';

class Meal {
  final String idMeal;
  final String strMeal;
  final String strDrinkAlternate;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strTags;
  final String strYoutube;
  final String strIngredient1;
  final String strIngredient2;
  final String strIngredient3;
  final String strIngredient4;
  final String strIngredient5;
  final String strIngredient6;
  final String strIngredient7;
  final String strIngredient8;
  final String strIngredient9;
  final String strIngredient10;
  final String strIngredient11;
  final String strIngredient12;
  final String strIngredient13;
  final String strIngredient14;
  final String strIngredient15;
  final String strIngredient16;
  final String strIngredient17;
  final String strIngredient18;
  final String strIngredient19;
  final String strIngredient20;
  final String strMeasure1;
  final String strMeasure2;
  final String strMeasure3;
  final String strMeasure4;
  final String strMeasure5;
  final String strMeasure6;
  final String strMeasure7;
  final String strMeasure8;
  final String strMeasure9;
  final String strMeasure10;
  final String strMeasure11;
  final String strMeasure12;
  final String strMeasure13;
  final String strMeasure14;
  final String strMeasure15;
  final String strMeasure16;
  final String strMeasure17;
  final String strMeasure18;
  final String strMeasure19;
  final String strMeasure20;
  final String strSource;
  final DateTime dateModified;

  Meal({
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

  Meal copyWith({
    String idMeal,
    String strMeal,
    String strDrinkAlternate,
    String strCategory,
    String strArea,
    String strInstructions,
    String strMealThumb,
    String strTags,
    String strYoutube,
    String strIngredient1,
    String strIngredient2,
    String strIngredient3,
    String strIngredient4,
    String strIngredient5,
    String strIngredient6,
    String strIngredient7,
    String strIngredient8,
    String strIngredient9,
    String strIngredient10,
    String strIngredient11,
    String strIngredient12,
    String strIngredient13,
    String strIngredient14,
    String strIngredient15,
    String strIngredient16,
    String strIngredient17,
    String strIngredient18,
    String strIngredient19,
    String strIngredient20,
    String strMeasure1,
    String strMeasure2,
    String strMeasure3,
    String strMeasure4,
    String strMeasure5,
    String strMeasure6,
    String strMeasure7,
    String strMeasure8,
    String strMeasure9,
    String strMeasure10,
    String strMeasure11,
    String strMeasure12,
    String strMeasure13,
    String strMeasure14,
    String strMeasure15,
    String strMeasure16,
    String strMeasure17,
    String strMeasure18,
    String strMeasure19,
    String strMeasure20,
    String strSource,
    DateTime dateModified,
  }) {
    return Meal(
      idMeal: idMeal ?? this.idMeal,
      strMeal: strMeal ?? this.strMeal,
      strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
      strCategory: strCategory ?? this.strCategory,
      strArea: strArea ?? this.strArea,
      strInstructions: strInstructions ?? this.strInstructions,
      strMealThumb: strMealThumb ?? this.strMealThumb,
      strTags: strTags ?? this.strTags,
      strYoutube: strYoutube ?? this.strYoutube,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strIngredient16: strIngredient16 ?? this.strIngredient16,
      strIngredient17: strIngredient17 ?? this.strIngredient17,
      strIngredient18: strIngredient18 ?? this.strIngredient18,
      strIngredient19: strIngredient19 ?? this.strIngredient19,
      strIngredient20: strIngredient20 ?? this.strIngredient20,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strMeasure16: strMeasure16 ?? this.strMeasure16,
      strMeasure17: strMeasure17 ?? this.strMeasure17,
      strMeasure18: strMeasure18 ?? this.strMeasure18,
      strMeasure19: strMeasure19 ?? this.strMeasure19,
      strMeasure20: strMeasure20 ?? this.strMeasure20,
      strSource: strSource ?? this.strSource,
      dateModified: dateModified ?? this.dateModified,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idMeal': idMeal,
      'strMeal': strMeal,
      'strDrinkAlternate': strDrinkAlternate,
      'strCategory': strCategory,
      'strArea': strArea,
      'strInstructions': strInstructions,
      'strMealThumb': strMealThumb,
      'strTags': strTags,
      'strYoutube': strYoutube,
      'strIngredient1': strIngredient1,
      'strIngredient2': strIngredient2,
      'strIngredient3': strIngredient3,
      'strIngredient4': strIngredient4,
      'strIngredient5': strIngredient5,
      'strIngredient6': strIngredient6,
      'strIngredient7': strIngredient7,
      'strIngredient8': strIngredient8,
      'strIngredient9': strIngredient9,
      'strIngredient10': strIngredient10,
      'strIngredient11': strIngredient11,
      'strIngredient12': strIngredient12,
      'strIngredient13': strIngredient13,
      'strIngredient14': strIngredient14,
      'strIngredient15': strIngredient15,
      'strIngredient16': strIngredient16,
      'strIngredient17': strIngredient17,
      'strIngredient18': strIngredient18,
      'strIngredient19': strIngredient19,
      'strIngredient20': strIngredient20,
      'strMeasure1': strMeasure1,
      'strMeasure2': strMeasure2,
      'strMeasure3': strMeasure3,
      'strMeasure4': strMeasure4,
      'strMeasure5': strMeasure5,
      'strMeasure6': strMeasure6,
      'strMeasure7': strMeasure7,
      'strMeasure8': strMeasure8,
      'strMeasure9': strMeasure9,
      'strMeasure10': strMeasure10,
      'strMeasure11': strMeasure11,
      'strMeasure12': strMeasure12,
      'strMeasure13': strMeasure13,
      'strMeasure14': strMeasure14,
      'strMeasure15': strMeasure15,
      'strMeasure16': strMeasure16,
      'strMeasure17': strMeasure17,
      'strMeasure18': strMeasure18,
      'strMeasure19': strMeasure19,
      'strMeasure20': strMeasure20,
      'strSource': strSource,
      'dateModified': dateModified?.millisecondsSinceEpoch,
    };
  }

  static Meal fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Meal(
      idMeal: map['idMeal'],
      strMeal: map['strMeal'],
      strDrinkAlternate: map['strDrinkAlternate'],
      strCategory: map['strCategory'],
      strArea: map['strArea'],
      strInstructions: map['strInstructions'],
      strMealThumb: map['strMealThumb'],
      strTags: map['strTags'],
      strYoutube: map['strYoutube'],
      strIngredient1: map['strIngredient1'],
      strIngredient2: map['strIngredient2'],
      strIngredient3: map['strIngredient3'],
      strIngredient4: map['strIngredient4'],
      strIngredient5: map['strIngredient5'],
      strIngredient6: map['strIngredient6'],
      strIngredient7: map['strIngredient7'],
      strIngredient8: map['strIngredient8'],
      strIngredient9: map['strIngredient9'],
      strIngredient10: map['strIngredient10'],
      strIngredient11: map['strIngredient11'],
      strIngredient12: map['strIngredient12'],
      strIngredient13: map['strIngredient13'],
      strIngredient14: map['strIngredient14'],
      strIngredient15: map['strIngredient15'],
      strIngredient16: map['strIngredient16'],
      strIngredient17: map['strIngredient17'],
      strIngredient18: map['strIngredient18'],
      strIngredient19: map['strIngredient19'],
      strIngredient20: map['strIngredient20'],
      strMeasure1: map['strMeasure1'],
      strMeasure2: map['strMeasure2'],
      strMeasure3: map['strMeasure3'],
      strMeasure4: map['strMeasure4'],
      strMeasure5: map['strMeasure5'],
      strMeasure6: map['strMeasure6'],
      strMeasure7: map['strMeasure7'],
      strMeasure8: map['strMeasure8'],
      strMeasure9: map['strMeasure9'],
      strMeasure10: map['strMeasure10'],
      strMeasure11: map['strMeasure11'],
      strMeasure12: map['strMeasure12'],
      strMeasure13: map['strMeasure13'],
      strMeasure14: map['strMeasure14'],
      strMeasure15: map['strMeasure15'],
      strMeasure16: map['strMeasure16'],
      strMeasure17: map['strMeasure17'],
      strMeasure18: map['strMeasure18'],
      strMeasure19: map['strMeasure19'],
      strMeasure20: map['strMeasure20'],
      strSource: map['strSource'],
      dateModified: DateTime.fromMillisecondsSinceEpoch(map['dateModified']),
    );
  }

  String toJson() => json.encode(toMap());

  static Meal fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Meal(idMeal: $idMeal, strMeal: $strMeal, strDrinkAlternate: $strDrinkAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strIngredient16: $strIngredient16, strIngredient17: $strIngredient17, strIngredient18: $strIngredient18, strIngredient19: $strIngredient19, strIngredient20: $strIngredient20, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strMeasure16: $strMeasure16, strMeasure17: $strMeasure17, strMeasure18: $strMeasure18, strMeasure19: $strMeasure19, strMeasure20: $strMeasure20, strSource: $strSource, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Meal &&
        o.idMeal == idMeal &&
        o.strMeal == strMeal &&
        o.strDrinkAlternate == strDrinkAlternate &&
        o.strCategory == strCategory &&
        o.strArea == strArea &&
        o.strInstructions == strInstructions &&
        o.strMealThumb == strMealThumb &&
        o.strTags == strTags &&
        o.strYoutube == strYoutube &&
        o.strIngredient1 == strIngredient1 &&
        o.strIngredient2 == strIngredient2 &&
        o.strIngredient3 == strIngredient3 &&
        o.strIngredient4 == strIngredient4 &&
        o.strIngredient5 == strIngredient5 &&
        o.strIngredient6 == strIngredient6 &&
        o.strIngredient7 == strIngredient7 &&
        o.strIngredient8 == strIngredient8 &&
        o.strIngredient9 == strIngredient9 &&
        o.strIngredient10 == strIngredient10 &&
        o.strIngredient11 == strIngredient11 &&
        o.strIngredient12 == strIngredient12 &&
        o.strIngredient13 == strIngredient13 &&
        o.strIngredient14 == strIngredient14 &&
        o.strIngredient15 == strIngredient15 &&
        o.strIngredient16 == strIngredient16 &&
        o.strIngredient17 == strIngredient17 &&
        o.strIngredient18 == strIngredient18 &&
        o.strIngredient19 == strIngredient19 &&
        o.strIngredient20 == strIngredient20 &&
        o.strMeasure1 == strMeasure1 &&
        o.strMeasure2 == strMeasure2 &&
        o.strMeasure3 == strMeasure3 &&
        o.strMeasure4 == strMeasure4 &&
        o.strMeasure5 == strMeasure5 &&
        o.strMeasure6 == strMeasure6 &&
        o.strMeasure7 == strMeasure7 &&
        o.strMeasure8 == strMeasure8 &&
        o.strMeasure9 == strMeasure9 &&
        o.strMeasure10 == strMeasure10 &&
        o.strMeasure11 == strMeasure11 &&
        o.strMeasure12 == strMeasure12 &&
        o.strMeasure13 == strMeasure13 &&
        o.strMeasure14 == strMeasure14 &&
        o.strMeasure15 == strMeasure15 &&
        o.strMeasure16 == strMeasure16 &&
        o.strMeasure17 == strMeasure17 &&
        o.strMeasure18 == strMeasure18 &&
        o.strMeasure19 == strMeasure19 &&
        o.strMeasure20 == strMeasure20 &&
        o.strSource == strSource &&
        o.dateModified == dateModified;
  }

  @override
  int get hashCode {
    return idMeal.hashCode ^
        strMeal.hashCode ^
        strDrinkAlternate.hashCode ^
        strCategory.hashCode ^
        strArea.hashCode ^
        strInstructions.hashCode ^
        strMealThumb.hashCode ^
        strTags.hashCode ^
        strYoutube.hashCode ^
        strIngredient1.hashCode ^
        strIngredient2.hashCode ^
        strIngredient3.hashCode ^
        strIngredient4.hashCode ^
        strIngredient5.hashCode ^
        strIngredient6.hashCode ^
        strIngredient7.hashCode ^
        strIngredient8.hashCode ^
        strIngredient9.hashCode ^
        strIngredient10.hashCode ^
        strIngredient11.hashCode ^
        strIngredient12.hashCode ^
        strIngredient13.hashCode ^
        strIngredient14.hashCode ^
        strIngredient15.hashCode ^
        strIngredient16.hashCode ^
        strIngredient17.hashCode ^
        strIngredient18.hashCode ^
        strIngredient19.hashCode ^
        strIngredient20.hashCode ^
        strMeasure1.hashCode ^
        strMeasure2.hashCode ^
        strMeasure3.hashCode ^
        strMeasure4.hashCode ^
        strMeasure5.hashCode ^
        strMeasure6.hashCode ^
        strMeasure7.hashCode ^
        strMeasure8.hashCode ^
        strMeasure9.hashCode ^
        strMeasure10.hashCode ^
        strMeasure11.hashCode ^
        strMeasure12.hashCode ^
        strMeasure13.hashCode ^
        strMeasure14.hashCode ^
        strMeasure15.hashCode ^
        strMeasure16.hashCode ^
        strMeasure17.hashCode ^
        strMeasure18.hashCode ^
        strMeasure19.hashCode ^
        strMeasure20.hashCode ^
        strSource.hashCode ^
        dateModified.hashCode;
  }
}