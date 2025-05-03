import 'package:flutter/material.dart';
import 'package:uacm_app/screens/servicios/inner_servicios/catalogo_descuentos_screen.dart';
import 'package:uacm_app/screens/servicios/inner_servicios/comunidad_universitaria_screen.dart';
import 'package:uacm_app/screens/servicios/inner_servicios/publico_general_screen.dart';
import 'package:uacm_app/widgets/list_tile_custom.dart';

class ServiciosScreen extends StatelessWidget {
  const ServiciosScreen({super.key});
  static const String routeName = "/ServiciosScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Servicios'), elevation: 4),
      body: ListView(
        children: [
          ListTileCustom(
            title: 'Catalogo de descuentos',
            leading: Icons.menu_book,
            trailing: Icons.arrow_forward_ios_outlined,
            onTap: () {
              Navigator.of(
                context,
              ).pushNamed(CatalogoDescuentosScreen.routeName);
            },
          ),
          ListTileCustom(
            title: 'Comunidad Univesitaria',
            leading: Icons.menu_book,
            trailing: Icons.arrow_forward_ios_outlined,
            onTap: () {
              Navigator.of(
                context,
              ).pushNamed(ComunidadUniversitariaScreen.routeName);
            },
          ),
          ListTileCustom(
            title: 'Publico en General',
            leading: Icons.menu_book,
            trailing: Icons.arrow_forward_ios_outlined,
            onTap: () {
              Navigator.of(context).pushNamed(PublicoGeneralScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
