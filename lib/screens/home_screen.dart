import 'package:flutter/material.dart';
import 'package:uacm_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(8),
          shrinkWrap: true,
          children: [
            ListTileCustom(
              title: 'Estudios',
              leading: Icons.menu_book,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(EstudiosScreen.routeName);
              },
            ),

            ListTileCustom(
              title: 'Cultura',
              leading: Icons.museum,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(CulturaScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Preferencias',
              leading: Icons.settings,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(PreferenciasScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Rutas',
              leading: Icons.directions,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(RutasScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Comunición universitaria',
              leading: Icons.forum,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(ComunicacionUnivScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Deportes',
              leading: Icons.fitness_center_outlined,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(DeportesScreen.routeName);
              },
            ),
            ListTileCustom(
              title: 'Servicios',
              leading: Icons.support,
              trailing: Icons.arrow_forward_ios_outlined,
              onTap: () {
                Navigator.of(context).pushNamed(ServiciosScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileCustom extends StatelessWidget {
  const ListTileCustom({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.onTap,
  });
  final String title;
  final IconData leading;
  final IconData trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        onTap: onTap,
        iconColor: Colors.cyan[800],
        contentPadding: EdgeInsets.all(24),
        splashColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.cyan.shade800),
        ),
        tileColor: Colors.pink.shade100
            .withValues(alpha: .3)
            .withGreen(230)
            .withRed(200),
        dense: false,
        title: Text(title),
        leading: Icon(leading),
        trailing: Icon(trailing),
      ),
    );
  }
}
