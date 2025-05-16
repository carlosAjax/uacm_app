import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uacm_app/screens/comunicacion_univ_screen.dart';
import 'package:uacm_app/screens/home_screen.dart';
import 'package:uacm_app/screens/screens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const String routeName = "/DashboardScreen";

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int indexSelected = 0;

  void onBarItemSelected(int index) {
    setState(() {
      indexSelected = index;
      controller!.index = indexSelected;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          HomeScreen(),
          ComunicacionUnivScreen(),
          RutasScreen(),
          ServiciosScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.surface,

          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            currentIndex: indexSelected,
            onTap: onBarItemSelected,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            unselectedItemColor: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.5),
            showSelectedLabels: true,
            selectedItemColor: Theme.of(context).colorScheme.primary,

            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_outlined),
                label: 'Comedor',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.route_rounded),
                label: 'Rutas',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view),
                label: 'Servicios',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
