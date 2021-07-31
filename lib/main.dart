import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_job/provider/provider.dart';
import 'package:task_job/screens/Auth/login_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ProviderAll>(
      create: (_) => ProviderAll(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task job',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
