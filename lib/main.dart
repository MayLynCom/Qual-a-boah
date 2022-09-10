import 'package:flutter/material.dart';
import 'constants.dart';
import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qual é a Boah ?',
      theme: ThemeData(
          textTheme: const TextTheme(
            headline5: TextStyle(fontWeight: FontWeight.bold),
          ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              side: MaterialStateProperty.resolveWith<BorderSide>(
                      (states) => BorderSide(color: Colors.black)),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
        }),
            fixedSize: MaterialStateProperty.all(Size(80, 40))
          )
        )
      ),
      home: const HomePage(),
    );
  }
}




