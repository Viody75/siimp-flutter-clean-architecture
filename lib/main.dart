import 'package:flutter/material.dart';
import 'injection/injection.dart' as di;
import 'routes/app_router.dart';

void main() {
  di.init(); // init GetIt
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/',
    );
  }
}
