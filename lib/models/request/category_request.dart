import 'dart:convert';

class CategoryRequest {
  String? c;
  CategoryRequest({
    this.c,
  });


  CategoryRequest copyWith({
    String? c,
  }) {
    return CategoryRequest(
      c: c ?? this.c,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'c': c,
    };
  }

  static CategoryRequest? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
  
    return CategoryRequest(
      c: map['c'],
    );
  }

  String toJson() => json.encode(toMap());

  static CategoryRequest? fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'CategoryRequest(c: $c)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is CategoryRequest &&
      o.c == c;
  }

  @override
  int get hashCode => c.hashCode;
}
