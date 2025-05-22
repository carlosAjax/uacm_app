import 'package:flutter/material.dart';
import 'package:uacm_app/screens/calendario_escolar_screen.dart';
import 'package:uacm_app/screens/historial_screen.dart';
import 'package:uacm_app/widgets/list_tile_custom.dart';

class EstudiosScreen extends StatelessWidget {
  const EstudiosScreen({super.key});
  static const String routeName = "/EstudiosScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(8),
          shrinkWrap: true,
          children: [
            ListTileCustom(
              title: 'Mis Calificaciones',
              leading: Icons.assessment,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(HistorialScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Calendario escolar',
              leading: Icons.calendar_today,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(CalendarioEscolarScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Mis publicaciones',
              leading: Icons.article,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(EstudiosScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
