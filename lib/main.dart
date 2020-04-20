import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:web_form/injection.dart';
import 'package:web_form/presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(MyApp());
}
