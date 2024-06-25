import 'package:flutter/material.dart';

import 'consts/consts.dart';

void main() {
  runApp(const SanskritiMart());
}

class SanskritiMart extends StatelessWidget {
  const SanskritiMart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appname,
      theme: ThemeData(),
    );
  }
}
