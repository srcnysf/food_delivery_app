
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'meal.dart';

class Meals {
  final List<Meal> meals;
  Meals({
    this.meals,
  });


  Meals copyWith({
    List<Meal> meals,
  }) {
    return Meals(
      meals: meals ?? this.meals,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'meals': meals?.map((x) => x?.toMap())?.toList(),
    };
  }

  static Meals fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Meals(
      meals: List<Meal>.from(map['meals']?.map((x) => Meal.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  static Meals fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Meals(meals: $meals)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Meals &&
      listEquals(o.meals, meals);
  }

  @override
  int get hashCode => meals.hashCode;
}
