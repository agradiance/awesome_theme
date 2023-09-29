import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/awesome_theme_controller.dart';
import '../models/awesome_theme_data.dart';

part '../models/awesome_theme_model.dart';

class AwesomeTheme extends StatefulWidget {
  const AwesomeTheme({
    super.key,
    required this.child,
    required this.themes,
  });

  final Widget child;
  final List<ThemeData> themes;

  static ThemeData themeOf(BuildContext context) {
    return Provider.of<_AwesomeThemeModel>(context, listen: true).theme;
  }

  static AwesomeThemeController controllerOf(BuildContext context) {
    return Provider.of<_AwesomeThemeModel>(context, listen: false).controller;
  }

  @override
  State<AwesomeTheme> createState() => _AwesomeThemeProviderState();
}

class _AwesomeThemeProviderState extends State<AwesomeTheme> {
  late final _AwesomeThemeModel _awesomeThemeModel;

  @override
  void initState() {
    super.initState();
    _awesomeThemeModel = _AwesomeThemeModel(
      data: widget.themes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _awesomeThemeModel,
      child: widget.child,
    );
  }
}
