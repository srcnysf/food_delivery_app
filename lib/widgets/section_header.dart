import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  const SectionHeader({
    Key? key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(Icons.arrow_forward_ios, size: 14)
              ],
            ),
          ],
        ),
      ),
    );
  }
}