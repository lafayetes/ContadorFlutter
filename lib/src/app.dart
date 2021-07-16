import 'package:flutter/material.dart';
import 'package:contador_flutter/src/pages/home_page.dart';

import 'package:contador_flutter/src/pages/contador_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorWidget(),
    );
  }
}
