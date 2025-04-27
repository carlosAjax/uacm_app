import 'package:flutter/material.dart';
import 'package:uacm_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uacm_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.bangersTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
        ),
      ),
      home: const HomeScreen(),
      routes: {
        ComunicacionUnivScreen.routeName: (context) => ComunicacionUnivScreen(),
        EstudiosScreen.routeName: (context) => EstudiosScreen(),
        PreferenciasScreen.routeName: (context) => PreferenciasScreen(),
        ServiciosScreen.routeName: (context) => ServiciosScreen(),
        CulturaScreen.routeName: (context) => CulturaScreen(),
        DeportesScreen.routeName: (context) => DeportesScreen(),
        RutasScreen.routeName: (context) => RutasScreen(),
      },
    );
  }
}
