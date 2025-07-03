// ignore_for_file: public_member_api_docs, sort_constructors_first
class Estudiante {
  final String nombre;
  final String matricula;
  final String licenciatura;
  final String urlImg;
  const Estudiante({
    required this.nombre,
    required this.matricula,
    required this.licenciatura,
    required this.urlImg,
  });



  factory Estudiante.fromJson(Map<String, dynamic> json) {
    return Estudiante(
      nombre: json['nombre'],
      matricula: json['matricula'],
      licenciatura: json['licenciatura'],
      urlImg: json['url_img'],
    );
  }

  Estudiante copyWith({
    String? nombre,
    String? matricula,
    String? licenciatura,
    String? urlImg,
  }) {
    return Estudiante(
      nombre: nombre ?? this.nombre,
      matricula: matricula ?? this.matricula,
      licenciatura: licenciatura ?? this.licenciatura,
      urlImg: urlImg ?? this.urlImg,
    );
  }
}
