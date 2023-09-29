import 'package:awesome_theme/awesome_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Create AwesomeTheme
    return AwesomeTheme(
      themes: [
        ThemeData.dark(useMaterial3: true).copyWith(),
        ThemeData.dark(useMaterial3: true).copyWith(),
      ],
      child: MaterialApp(
        title: 'Awesome Theme Example',
        debugShowCheckedModeBanner: false,
        theme: AwesomeTheme.themeOf(context),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Awesome data"),
      ),
    );
  }
}
