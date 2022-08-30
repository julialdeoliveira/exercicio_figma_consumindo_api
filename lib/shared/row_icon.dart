import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Icon(
            AkarIcons.linkedin_box_fill,
            size: 30,
            color: Colors.deepPurple,
          ),
        ),
        SizedBox(width: 10),
        Icon(
          AkarIcons.google_contained_fill,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(width: 10),
        Icon(
          AkarIcons.github_fill,
          size: 40,
          color: Colors.white,
        ),
      ],
    );
  }
}
