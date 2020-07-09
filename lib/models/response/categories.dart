import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/response/category.dart'as cat;

class Categories {
  final List<cat.Category> categories;
  Categories({
    this.categories,
  });

  Categories copyWith({
    List<cat.Category> categories,
  }) {
    return Categories(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories': categories?.map((x) => x?.toMap())?.toList(),
    };
  }

  static Categories fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Categories(
      categories: List<cat.Category>.from(map['categories']?.map((x) => cat.Category.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  static Categories fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Caregories(categories: $categories)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Categories &&
      listEquals(o.categories, categories);
  }

  @override
  int get hashCode => categories.hashCode;
}