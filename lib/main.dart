import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uacm_app/screens/calendario_escolar_screen.dart';
import 'package:uacm_app/screens/dashboard/dashboard_screen.dart';
import 'package:uacm_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uacm_app/screens/screens.dart';
import 'package:uacm_app/screens/servicios/servicios.dart';
import 'package:uacm_app/theme/material_theme.dart';
import 'package:uacm_app/util/util.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Asegura que las barras de estado y navegación estén visibles
  /* SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ); */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "ADLaM Display", "Lato");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.dark(),

      home: const DashboardScreen(),
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
