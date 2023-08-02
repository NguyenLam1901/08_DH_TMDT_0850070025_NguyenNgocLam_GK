import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myshoesapp/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'package:myshoesapp/providers/counter_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Counter())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Questrial'),
      home: const LoginPage(),
    );
  }
}
