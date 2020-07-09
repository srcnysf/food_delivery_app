import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/response/category.dart'as cat;

class Caregories {
  final List<cat.Category> categories;
  Caregories({
    this.categories,
  });

  Caregories copyWith({
    List<cat.Category> categories,
  }) {
    return Caregories(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories': categories?.map((x) => x?.toMap())?.toList(),
    };
  }

  static Caregories fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Caregories(
      categories: List<cat.Category>.from(map['categories']?.map((x) => cat.Category.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  static Caregories fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Caregories(categories: $categories)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Caregories &&
      listEquals(o.categories, categories);
  }

  @override
  int get hashCode => categories.hashCode;
}