import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_9/screens/authentication/login_screen.dart';
import 'package:project_9/screens/authentication/sign_up_screen.dart';
import 'package:project_9/screens/splash_screen/splash.dart';
import 'package:project_9/util/bottom_navigation_bar/BottomNavProvider.dart';
import 'package:project_9/util/bottom_navigation_bar/Bottom_Nav_Bar.dart';
import 'package:provider/provider.dart';

import 'harsit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0x00ffffff)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>BottomNavProvider())

    ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const SplashScreen(),
      //home: BottomNavBar(),
      home: Harsit(),
    ),);
  }
}
