import 'dart:convert';
import 'package:http/http.dart';
import 'package:uacm_app/model/info.dart';

class ApiService {
  final urlBase = "http://192.168.1.65:3000";

  Future<List<Info>> fetchHistorial() async {
    final response = await get(Uri.parse('$urlBase/historial'));
    if (response.statusCode == 200) {
      final List<dynamic> historialData = json.decode(response.body);
      return historialData.map((materia) => Info.fromJson(materia)).toList();
    } else {
      throw Exception('no se cargo el historial');
    }
  }
}
