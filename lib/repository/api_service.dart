import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';
import 'package:uacm_app/model/estudiante.dart';
import 'package:uacm_app/model/info.dart';

class ApiService {
  final urlBase = "http://192.168.1.65:3000";
  final urlBaseGist =
      "https://gist.githubusercontent.com/carlosAjax/2c28f6358fbe7d42249b9ae692e48aae/raw/aef9c0887e7daa4c109dc599586f5bbd9ac4ea86";

  Future<List<Info>> fetchHistorial() async {
    try {
      final response = await get(
        Uri.parse('$urlBase/historial'),
      ).timeout(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final List<dynamic> historialData = json.decode(response.body);
        return historialData.map((materia) => Info.fromJson(materia)).toList();
      }
    } catch (e) {
      print("Error en servidor local: $e");
    }

    // Segundo intento con el respaldo en GitHub Gist
    try {
      final response = await get(Uri.parse('$urlBaseGist/historial.json'));
      if (response.statusCode == 200) {
        final List<dynamic> historialData = json.decode(response.body);
        return historialData.map((materia) => Info.fromJson(materia)).toList();
      }
    } catch (e) {
      print("Error al cargar respaldo desde Gist: $e");
    }

    throw Exception('No se pudo cargar el historial');
  }

  // Función para realizar la solicitud GET a la URL
  Future<Estudiante> fetchEstudiantePorQR() async {
    
   
    final user = FirebaseAuth.instance.currentUser;
    final uid = user?.uid ?? 'not found uid';
    final fotoUrl = user?.photoURL ?? 'not found';
    final userDisplayName = user?.displayName ?? 'not found username';
    
    final Estudiante estudiante = Estudiante(nombre: userDisplayName, matricula: uid, licenciatura: 'Ingenieria de Software', urlImg: fotoUrl);
    
    return estudiante;


    
  }
}
