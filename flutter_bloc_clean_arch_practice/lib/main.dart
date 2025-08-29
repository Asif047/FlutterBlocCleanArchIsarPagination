import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Keep this if other blocs are used globally
import 'di/injection_container.dart' as di;

import 'config/app_router.dart'; // Add this import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( // Change to MaterialApp.router
      title: 'Flutter GitHub Repositories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: appRouter, // Add this line
    );
  }
}