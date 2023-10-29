import 'package:design_pattern_template/memento/memento_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: runPattern.getPage,
    );
  }
}

const DesignPatternEnum runPattern = DesignPatternEnum.memento;

enum DesignPatternEnum {
  memento;

  Widget get getPage => switch (this) {
        memento => const MementoPage(),
      };
}
