import 'dart:convert';

class AreaRequest {
  String? a;
  AreaRequest({
    this.a,
  });

  AreaRequest copyWith({
    String? a,
  }) {
    return AreaRequest(
      a: a ?? this.a,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'a': a,
    };
  }

  static AreaRequest? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
  
    return AreaRequest(
      a: map['a'],
    );
  }

  String toJson() => json.encode(toMap());

  static AreaRequest? fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'AreaRequest(a: $a)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is AreaRequest &&
      o.a == a;
  }

  @override
  int get hashCode => a.hashCode;
}
