import 'package:flutter/material.dart';

import '../constants.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Hello Flutter',style: TextStyle(fontSize: 30),),
        ),

    );
  }
}
