import 'package:awesome_theme/awesome_theme.dart';
import 'package:flutter/material.dart';

class AwesomeDemoPage extends StatelessWidget {
  const AwesomeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TChange Theme Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ///Change to next theme
            AwesomeTheme.controllerOf(context).nextTheme();
          },
          child: const Text("Next Theme"),
        ),
      ),
    );
  }
}
