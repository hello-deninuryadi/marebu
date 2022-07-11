import 'package:flutter/material.dart';
import 'package:marebu/styleGuide.dart';

class default_button extends StatelessWidget {
  final String place_holder_text;
  final String navigasi;

  default_button(
      {Key? key, this.place_holder_text = "button", this.navigasi = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 40,
      margin: EdgeInsets.only(left: 16, top: 42),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, navigasi);
        },
        style: ElevatedButton.styleFrom(
          onPrimary: primaryColor,
        ),
        child: Text(
          place_holder_text,
          style: Body.copyWith(fontWeight: semiBold, color: Colors.white),
        ),
      ),
    );
  }
}
