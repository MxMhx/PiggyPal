import 'package:flutter/material.dart';
import 'package:piggywallet/screens/home.dart';
import 'package:piggywallet/screens/tran_saction.dart';
import 'package:piggywallet/screens/with_draw.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FastMeal Flutter App',
      initialRoute: '/withdraw',
      routes: {
        '/': (context) => const HomeScreen(),
        '/withdraw': (context) => const WithdrawScreen(),
        '/transaction': (context) => const TransactionScreen(),
      },
    );
  }
}
