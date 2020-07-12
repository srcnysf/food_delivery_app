import 'dart:convert';

class SearchRequest {
  String s;
  SearchRequest({
    this.s,
  });

  SearchRequest copyWith({
    String s,
  }) {
    return SearchRequest(
      s: s ?? this.s,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      's': s,
    };
  }

  static SearchRequest fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SearchRequest(
      s: map['s'],
    );
  }

  String toJson() => json.encode(toMap());

  static SearchRequest fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'SearchRequest(s: $s)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SearchRequest && o.s == s;
  }

  @override
  int get hashCode => s.hashCode;
}
