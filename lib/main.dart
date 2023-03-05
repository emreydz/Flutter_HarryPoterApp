import 'package:flutter/material.dart';
import 'package:harry_poter_app/injection.dart';
import 'package:harry_poter_app/presentation/core/app_widget.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
