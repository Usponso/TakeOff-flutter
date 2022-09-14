import "package:flutter/material.dart";
import 'package:takeoff_flutter/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onPress = defaultFunction,
      this.width = 100,
      this.height = 40,
      this.color = MyColors.primary,
      this.full = false,
      this.radius = 12});

  static Function? defaultFunction() {
    print("click");
  }

  final String text;
  final Function onPress;
  final double width;
  final double height;
  final Color color;
  final bool full;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        minimumSize: MaterialStateProperty.all(
            Size((full) ? MediaQuery.of(context).size.width : width, height)),
        // maximumSize: MaterialStateProperty.all(Size(10,10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      onPressed: () {
        onPress();
      },
      child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
