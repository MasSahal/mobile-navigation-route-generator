import 'package:flutter/material.dart';
import 'package:mobile_navigation_route_generator/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());

      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("500 Internal Server Error")),
        body: Center(child: Text('Yah halaman Error nih')),
      );
    });
  }
}
