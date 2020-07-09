import 'dart:convert';

class Category {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;
  Category({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  Category copyWith({
    String idCategory,
    String strCategory,
    String strCategoryThumb,
    String strCategoryDescription,
  }) {
    return Category(
      idCategory: idCategory ?? this.idCategory,
      strCategory: strCategory ?? this.strCategory,
      strCategoryThumb: strCategoryThumb ?? this.strCategoryThumb,
      strCategoryDescription: strCategoryDescription ?? this.strCategoryDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryThumb': strCategoryThumb,
      'strCategoryDescription': strCategoryDescription,
    };
  }

  static Category fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Category(
      idCategory: map['idCategory'],
      strCategory: map['strCategory'],
      strCategoryThumb: map['strCategoryThumb'],
      strCategoryDescription: map['strCategoryDescription'],
    );
  }

  String toJson() => json.encode(toMap());

  static Category fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Categorie(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Category &&
      o.idCategory == idCategory &&
      o.strCategory == strCategory &&
      o.strCategoryThumb == strCategoryThumb &&
      o.strCategoryDescription == strCategoryDescription;
  }

  @override
  int get hashCode {
    return idCategory.hashCode ^
      strCategory.hashCode ^
      strCategoryThumb.hashCode ^
      strCategoryDescription.hashCode;
  }
}