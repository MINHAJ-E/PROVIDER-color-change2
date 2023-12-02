import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:review_task/controller/provider.dart';
import 'package:review_task/view/home.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Provider1(),)
      ],
      child: const MaterialApp(
        home:HomeScreen()
      ),
    );
  }
}