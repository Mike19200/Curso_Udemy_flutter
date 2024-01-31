import 'package:flutter/material.dart';
import 'package:flutter_application_1_cursoudemy/presentation/screens/counter/counter_screen.dart';
import 'package:flutter_application_1_cursoudemy/presentation/screens/counter_functions_screen.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(34,156, 45, 45)
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}