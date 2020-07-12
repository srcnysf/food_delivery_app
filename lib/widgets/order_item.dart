import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/meal.dart';

class OrdersMealListItem extends StatelessWidget {
  final Meal meal;
  const OrdersMealListItem({
    Key key,
    this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.fitWidth, image: NetworkImage(meal.url))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 45,
                    child: Text(
                      meal.name,
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            bottom: 2, left: 8, right: 4, top: 2),
                        child: Icon(Icons.timer)),
                    Text(
                      "20-30",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                if (meal.ingrediendsList != null &&
                    meal.ingrediendsList.isNotEmpty)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: 2, left: 8, right: 4, top: 2),
                            child: Icon(Icons.fastfood)),
                        Wrap(
                            children: meal.ingrediendsList
                                .map((e) => Wrap(
                                      children: [
                                        Text(
                                          "$e ",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ))
                                .toList())
                      ],
                    ),
                  ),
                if (meal.addsOnList != null && meal.addsOnList.isNotEmpty)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                bottom: 2, left: 8, right: 4, top: 2),
                            child: Icon(Icons.add)),
                        Wrap(
                            children: meal.addsOnList
                                .map((e) => Wrap(
                                      children: [
                                        Text(
                                          "$e ",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ))
                                .toList())
                      ],
                    ),
                  ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            bottom: 2, left: 8, right: 4, top: 2),
                        child: Icon(Icons.monetization_on)),
                    Text(
                      "${meal.price * meal.count} \$",
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            bottom: 2, left: 8, right: 4, top: 2),
                        child: Icon(Icons.add_circle_outline)),
                    Text(
                      "count : ${meal.count}",
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
