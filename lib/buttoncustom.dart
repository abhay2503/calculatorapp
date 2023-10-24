import 'package:flutter/material.dart';

class Buttoncustom extends StatefulWidget {
  const Buttoncustom({required this.tap,required this.colour,required this.text,required this.textColor});

  final VoidCallback tap;
  final Color colour;
  final String text;
  final Color textColor;

  @override
  State<Buttoncustom> createState() => _ButtoncustomState();
}

class _ButtoncustomState extends State<Buttoncustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: widget.tap,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.colour,
          foregroundColor: widget.textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
          ),
        ),
        child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize:21,
                  fontWeight: FontWeight.w500
              ),
            )
        ),
      ),
    );

  }
}
