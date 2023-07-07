import 'package:flutter/material.dart';
import 'package:mobile_navigation_route_generator/routes.dart';

void main() {
  runApp(const MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
