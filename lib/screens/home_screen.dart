import 'dart:math' as math;

import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uacm_app/screens/credencial_screen.dart';
import 'package:uacm_app/screens/login_screen.dart';
import 'package:uacm_app/screens/perfil_screen.dart';
import 'package:uacm_app/screens/screens.dart';
import 'package:uacm_app/screens/servicios/inner_servicios/comunidad_universitaria_screen.dart';
import 'package:uacm_app/widgets/list_tile_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'UACM',
                style: TextStyle(
                  fontFamily: 'Gotham',
                  fontSize: 34,
                  //color: Color(0xFF862633),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        children: [
          BounceInDown(
            child: CardCustom(
              height: 150,
              title: 'Estudios',
              urlImg: 'assets/estudiar.jpg',
              onTap: () {
                Navigator.of(context).pushNamed(EstudiosScreen.routeName);
              },
            ),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: BounceInLeft(
                  child: CardCustom(
                    height: MediaQuery.of(context).size.height * 0.3,
                    title: 'Cultura',
                    urlImg: 'assets/cultura.jpg',
                    onTap: () {
                      Navigator.of(context).pushNamed(CulturaScreen.routeName);
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),

              Expanded(
                child: BounceInRight(
                  child: CardCustom(
                    height: MediaQuery.of(context).size.height * 0.3,
                    title: 'Preferencias',
                    urlImg: 'assets/preferencias.jpg',
                    onTap: () {
                      Navigator.of(
                        context,
                      ).pushNamed(PreferenciasScreen.routeName);
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          BounceInDown(
            child: CardCustom(
              height: 150,
              title: 'Comunición universitaria',
              urlImg: 'assets/comunicacion.jpg',
              onTap: () {
                Navigator.of(
                  context,
                ).pushNamed(ComunicacionUnivScreen.routeName);
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: BounceInLeft(
                  child: CardCustom(
                    height: MediaQuery.of(context).size.height * 0.3,
                    title: 'Rutas',
                    urlImg: 'assets/rutas.jpg',
                    onTap: () {
                      Navigator.of(context).pushNamed(RutasScreen.routeName);
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),

              Expanded(
                child: BounceInRight(
                  child: CardCustom(
                    height: MediaQuery.of(context).size.height * 0.3,
                    title: 'Deportes',
                    urlImg: 'assets/deportes.jpg',
                    onTap: () {
                      Navigator.of(context).pushNamed(DeportesScreen.routeName);
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          BounceInDown(
            child: CardCustom(
              height: 150,
              title: 'Servicios',
              urlImg: 'assets/estudiar.jpg',
              onTap: () {
                Navigator.of(context).pushNamed(ServiciosScreen.routeName);
              },
            ),
          ),
          SizedBox(height: 5),
          /*  ListTileCustom(
            title: 'Servicios',
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
            title: 'Comunición universitaria',
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
          ), */
        ],
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(
                    context,
                  ).colorScheme.primaryContainer.withValues(alpha: 0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/UACM_2023_Blanco.png', fit: BoxFit.cover),
              ],
            ),
          ),

          ListTile(
            title: Text(
              'Perfil',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.person,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () {
              print('Navegando a PerfilScreen');
              Navigator.of(context).pushNamed(PerfilScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Credencial',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.badge,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CredencialScreen(),));
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Preguntas Frecuentes',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.question_answer,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () {},
          ),
          Divider(),

          ListTile(
            title: Text(
              'Logout',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.logout,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () async {
              await GoogleSignIn().signOut();
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
    required this.title,
    required this.urlImg,
    required this.height,
    this.onTap,
  });

  final String title;
  final String urlImg;
  final double height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Positioned.fill(child: Image.asset(urlImg, fit: BoxFit.cover)),
              Positioned.fill(
                child: Container(
                  height: height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(
                          context,
                        ).colorScheme.onPrimaryContainer.withValues(alpha: 0.6),

                        Theme.of(
                          context,
                        ).colorScheme.primaryContainer.withValues(alpha: 0.5),
                      ],
                      stops: [0.0, 0.9],

                      tileMode: TileMode.repeated,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: GradientRotation(28),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
