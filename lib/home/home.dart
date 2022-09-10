import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:eric_project/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: const Body(),
    );
  }
}
