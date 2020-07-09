import 'dart:convert';

class MealRequest {
  String i;
  MealRequest({
    this.i,
  });

  MealRequest copyWith({
    String i,
  }) {
    return MealRequest(
      i: i ?? this.i,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'i': i,
    };
  }

  static MealRequest fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MealRequest(
      i: map['i'],
    );
  }

  String toJson() => json.encode(toMap());

  static MealRequest fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'MealRequest(i: $i)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is MealRequest &&
      o.i == i;
  }

  @override
  int get hashCode => i.hashCode;
}
