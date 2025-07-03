import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uacm_app/model/estudiante.dart';
import 'package:uacm_app/repository/api_service.dart';

class CredencialScreen extends StatelessWidget {
  const CredencialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Estudiante>(
      future: ApiService().fetchEstudiantePorQR(), // Llamamos al servicio
      builder: (context, snapshot) {
        // Si la conexión está en espera, mostramos el indicador de carga.
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        // Si ocurrió un error, mostramos el mensaje de error.
        else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        // Si los datos están disponibles, mostramos la información.
        else if (snapshot.hasData) {
          Estudiante estudiante = snapshot.data!;

          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: const Text('Credencial Digital')),
              body: Center(
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(120, 30, 19, 0.8),
                              Colors.black87,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: 140,
                                height: 140,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(estudiante.urlImg),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Column(
                                children: [
                                  _buildInfoRow(
                                    icon: Icons.person,
                                    label: 'Nombre',
                                    value: estudiante.nombre,
                                  ),
                                  const SizedBox(height: 10),
                                  _buildInfoRow(
                                    icon: Icons.confirmation_number,
                                    label: 'Matrícula',
                                    value: estudiante.matricula,
                                  ),
                                  const SizedBox(height: 10),
                                  _buildInfoRow(
                                    icon: Icons.school,
                                    label: 'Licenciatura',
                                    value: estudiante.licenciatura,
                                  ),
                                  SizedBox(height: 50),
                                  QrImageView(
                                    data:
                                        estudiante.matricula +
                                        estudiante.licenciatura +
                                        estudiante.nombre +
                                        estudiante.urlImg,
                                    version: QrVersions.auto,
                                    size: 150.0,
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),

                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                                child: Image.asset(
                                  'assets/UACM_2023_B_logo.png',
                                  width: double.infinity,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(child: Text('No data available'));
        }
      },
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color.fromRGBO(35, 198, 200, 1), size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(label), FittedBox(child: Text(value))],
            ),
          ),
        ],
      ),
    );
  }
}
