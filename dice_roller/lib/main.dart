import 'package:flutter/material.dart';

import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromRGBO(26, 2, 80, 1),
            Color.fromARGB(255, 75, 26, 134),),
      ),
    ),
  );
}

