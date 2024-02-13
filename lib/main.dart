import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sm/provider/ScreenChage.dart';
import 'package:flutter/foundation.dart';

import 'Screen/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (_)=>ScreenChange(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    ),
    home: Home(),
    ));
  }
}





