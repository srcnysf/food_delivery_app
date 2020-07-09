import 'dart:convert';

class SearchRequest {
  String f;
  SearchRequest({
    this.f,
  });

  SearchRequest copyWith({
    String f,
  }) {
    return SearchRequest(
      f: f ?? this.f,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'f': f,
    };
  }

  static SearchRequest fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return SearchRequest(
      f: map['f'],
    );
  }

  String toJson() => json.encode(toMap());

  static SearchRequest fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'SearchRequest(f: $f)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is SearchRequest &&
      o.f == f;
  }

  @override
  int get hashCode => f.hashCode;
}
