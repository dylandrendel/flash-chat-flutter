import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function action;
  final Color color;

  RoundedButton({this.text, this.color, @required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: action,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
