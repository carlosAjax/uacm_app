class Info {
  final Ciclo ciclo;
  final String fkcolegio;
  final String fkcarrera;
  final String fkmateria;
  final String semestre;
  final String consecutivo;
  final String clave;
  final dynamic fkeje;
  final String fkespecializacion;
  final String idMapa;
  final String idmateria;
  final String fkacademia;
  final String estado;
  final String creditos;
  final String nombre;
  final String fkmateriaEquivalente;

  final String asignatura;
  final String eval;
  final String califletra;
  final String periodo;
  final String statusResultado;
  final String idinscripcion;

  Info({
    required this.ciclo,
    required this.fkcolegio,
    required this.fkcarrera,
    required this.fkmateria,
    required this.semestre,
    required this.consecutivo,
    required this.clave,
    required this.fkeje,
    required this.fkespecializacion,
    required this.idMapa,
    required this.idmateria,
    required this.fkacademia,
    required this.estado,
    required this.creditos,
    required this.nombre,
    required this.fkmateriaEquivalente,

    required this.asignatura,
    required this.eval,
    required this.califletra,
    required this.periodo,
    required this.statusResultado,
    required this.idinscripcion,
  });

  Info copyWith({
    Ciclo? ciclo,
    String? fkcolegio,
    String? fkcarrera,
    String? fkmateria,
    String? semestre,
    String? consecutivo,
    String? clave,
    dynamic fkeje,
    String? fkespecializacion,
    String? idMapa,
    String? idmateria,
    String? fkacademia,
    String? estado,
    String? creditos,
    String? nombre,
    String? fkmateriaEquivalente,
    dynamic fechaAlta,
    dynamic fkusuarioAlta,
    String? asignatura,
    String? eval,
    String? califletra,
    String? periodo,
    String? statusResultado,
    String? idinscripcion,
  }) => Info(
    ciclo: ciclo ?? this.ciclo,
    fkcolegio: fkcolegio ?? this.fkcolegio,
    fkcarrera: fkcarrera ?? this.fkcarrera,
    fkmateria: fkmateria ?? this.fkmateria,
    semestre: semestre ?? this.semestre,
    consecutivo: consecutivo ?? this.consecutivo,
    clave: clave ?? this.clave,
    fkeje: fkeje ?? this.fkeje,
    fkespecializacion: fkespecializacion ?? this.fkespecializacion,
    idMapa: idMapa ?? this.idMapa,
    idmateria: idmateria ?? this.idmateria,
    fkacademia: fkacademia ?? this.fkacademia,
    estado: estado ?? this.estado,
    creditos: creditos ?? this.creditos,
    nombre: nombre ?? this.nombre,
    fkmateriaEquivalente: fkmateriaEquivalente ?? this.fkmateriaEquivalente,
    asignatura: asignatura ?? this.asignatura,
    eval: eval ?? this.eval,
    califletra: califletra ?? this.califletra,
    periodo: periodo ?? this.periodo,
    statusResultado: statusResultado ?? this.statusResultado,
    idinscripcion: idinscripcion ?? this.idinscripcion,
  );

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    ciclo: cicloValues.map[json["ciclo"]]!,
    fkcolegio: json["fkcolegio"],
    fkcarrera: json["fkcarrera"],
    fkmateria: json["fkmateria"],
    semestre: json["semestre"],
    consecutivo: json["consecutivo"],
    clave: json["clave"],
    fkeje: json["fkeje"],
    fkespecializacion: json["fkespecializacion"],
    idMapa: json["id_mapa"],
    idmateria: json["idmateria"],
    fkacademia: json["fkacademia"],
    estado: json["estado"],
    creditos: json["creditos"],
    nombre: json["nombre"],
    fkmateriaEquivalente: json["fkmateria_equivalente"],
    asignatura: json["asignatura"],
    eval: json["eval"],
    califletra: json["califletra"],
    periodo: json["periodo"],
    statusResultado: json["status_resultado"],
    idinscripcion: json["idinscripcion"],
  );
}

enum Ciclo { A, B }

final cicloValues = EnumValues({"A": Ciclo.A, "B": Ciclo.B});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
