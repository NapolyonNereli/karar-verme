import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/const_colors.dart';
import 'package:flutter_application_1/provider/item_provider.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemProvider>(
          create: (_) => ItemProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: ConstColors.berryJam),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// Uygulamaya özgü renk paletlerini de ayarlamamız lazımlık
