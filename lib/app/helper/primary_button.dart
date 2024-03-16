import 'package:flutter/material.dart';

Widget buttonPrimary(String text, TextStyle textStyle, BuildContext context,
    double width, Color color, void Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: PhysicalModel(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      color: Colors.blueGrey,
      elevation: 4,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    ),
  );
}
