import 'package:clima/Views/homeView.dart';
import 'package:clima/components/darkModeNotifierComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DarkModeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkModeNotifier = Provider.of<DarkModeNotifier>(context);

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clima',
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.black),
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.grey[900],
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
        ),
        themeMode: darkModeNotifier.darkMode ? ThemeMode.dark : ThemeMode.light,
        home: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            final tween = Tween(begin: 0.0, end: 1.0);
            final fadeAnimation = animation.drive(tween);

            return FadeTransition(opacity: fadeAnimation, child: child);
          },
          child: HomeView(key: ValueKey<bool>(darkModeNotifier.darkMode)),
        ),
      ),
    );
  }
}
