import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/providers/ui_provider.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter_qr_scanner/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        )
      ],
      child: MaterialApp(
        title: 'QR read APP',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple,
          ),
        ),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case 'home':
              return PageTransition(
                child: const HomeScreen(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 3),
              );
            case 'map':
              return PageTransition(
                child: const MapScreen(),
                type: PageTransitionType.fade,
                settings: settings,
                reverseDuration: const Duration(seconds: 3),
              );
            default:
              return null;
          }
        },
      ),
    );
  }
}
