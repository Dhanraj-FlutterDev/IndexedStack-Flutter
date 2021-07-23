import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final bool selectedButton;
  final Function onTap;
  final String buttonText;

  const ButtonWidget(
      {Key key, this.selectedButton, this.onTap, this.buttonText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:
                  selectedButton ? Colors.deepPurpleAccent : Colors.deepOrange),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
