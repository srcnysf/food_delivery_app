import 'package:hive/hive.dart';

part 'meal.g.dart';

@HiveType(typeId: 0)
class Meal {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? url;
  @HiveField(3)
  String? time;
  @HiveField(4)
  int? price;
  @HiveField(5)
  List<String?>? ingrediendsList;
  @HiveField(6)
  List<String>? addsOnList;
  @HiveField(7)
  String? desc;
  @HiveField(8)
  int? count;
}
