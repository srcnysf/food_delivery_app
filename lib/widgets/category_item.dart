import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  final String name;
  final String description;
  final String url;
  final VoidCallback onPressed;
  const CategoryListItem({
    Key key,
    this.name,
    this.url,
    this.onPressed,
    this.description,
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
        child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: onPressed,
          child: Container(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 220,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        image: DecorationImage(
                            fit: BoxFit.fitWidth, image: NetworkImage(url))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      child: Text(
                        name,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          bottom: 2, left: 8, right: 4, top: 2),
                      child: Text(description,
                          maxLines:2,
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.grey)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
