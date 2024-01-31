import 'package:flutter/material.dart';
import 'package:yes_no_app_cursoudemy/config/theme/app_theme.dart';
import 'package:yes_no_app_cursoudemy/presentation/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes/No APP',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(),
      home: const ChatScreen()
    );
  }
}