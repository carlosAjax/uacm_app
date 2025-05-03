import 'package:flutter/material.dart';
import 'package:uacm_app/screens/calendario_escolar_screen.dart';
import 'package:uacm_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uacm_app/screens/screens.dart';
import 'package:uacm_app/screens/servicios/servicios.dart';
import 'package:uacm_app/theme/material_theme.dart';
import 'package:uacm_app/util/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "ADLaM Display", "Lato");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          brightness == Brightness.dark
              ? theme.light()
              : theme.darkHighContrast(),

      home: const HomeScreen(),
      routes: {
        ComunicacionUnivScreen.routeName: (context) => ComunicacionUnivScreen(),
        EstudiosScreen.routeName: (context) => EstudiosScreen(),
        PreferenciasScreen.routeName: (context) => PreferenciasScreen(),
        ServiciosScreen.routeName: (context) => ServiciosScreen(),
        CulturaScreen.routeName: (context) => CulturaScreen(),
        DeportesScreen.routeName: (context) => DeportesScreen(),
        RutasScreen.routeName: (context) => RutasScreen(),
        CalendarioEscolarScreen.routeName:
            (context) => CalendarioEscolarScreen(),
        CatalogoDescuentosScreen.routeName:
            (context) => CatalogoDescuentosScreen(),
        ComunidadUniversitariaScreen.routeName:
            (context) => ComunidadUniversitariaScreen(),
        PublicoGeneralScreen.routeName: (context) => PublicoGeneralScreen(),
      },
    );
  }
}
