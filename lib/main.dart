import 'package:flutter/material.dart';
import 'package:flutter_deal_connect/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 34, 63)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
