import 'dart:convert';

class IngredientsRequest {
  String i;
  IngredientsRequest({
    this.i,
  });

  IngredientsRequest copyWith({
    String i,
  }) {
    return IngredientsRequest(
      i: i ?? this.i,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'i': i,
    };
  }

  static IngredientsRequest fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return IngredientsRequest(
      i: map['i'],
    );
  }

  String toJson() => json.encode(toMap());

  static IngredientsRequest fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'IngredientsRequest(i: $i)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is IngredientsRequest &&
      o.i == i;
  }

  @override
  int get hashCode => i.hashCode;
}
