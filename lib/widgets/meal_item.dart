import 'package:flutter/material.dart';

class MealListItem extends StatelessWidget {
  final String? name;
  final String? url;
  const MealListItem({
    Key? key, this.name, this.url
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
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: url!,
                  child: Container(
                    height: 220,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(url!))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 45,
                    child: Text(
                      name!,
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 2,
                          left: 8,
                          right: 4,
                          top: 2),
                      child:
                          Image.asset("assets/clock.png",height: 15,),
                    ),
                    Text("20-30",style: TextStyle(
                      color: Colors.grey
                    ),)
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