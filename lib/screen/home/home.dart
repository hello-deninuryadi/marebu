import 'package:flutter/material.dart';
import 'package:marebu/size_config.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(child: Text("ini Home")),
      ),
    );
  }
}
