part of "../providers/awesome_theme_provider.dart";

class _AwesomeThemeModel with ChangeNotifier {
  int _currentThemeIndex = 0;

  late AwesomeThemeData themeData;
  late AwesomeThemeController controller;

  ThemeData get theme => themeData.data[_currentThemeIndex];
  List<ThemeData> get data => themeData.data;

  _AwesomeThemeModel({
    required List<ThemeData> data,
  })  : assert(data.isNotEmpty),
        themeData = AwesomeThemeData(data: data) {
    controller = AwesomeThemeController(
      nextTheme: _nextTheme,
    );
  }

  void _nextTheme() {
    final length = data.length;
    if (length > 1) {
      _currentThemeIndex = (_currentThemeIndex + 1) % length;
      notifyListeners();
    }
  }
}
