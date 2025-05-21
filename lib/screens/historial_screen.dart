import 'package:flutter/material.dart';
import 'package:uacm_app/model/info.dart';
import 'package:uacm_app/repository/api_service.dart';
import 'package:uacm_app/screens/servicios/inner_servicios/widgets/historial/materia_card.dart';

class HistorialScreen extends StatefulWidget {
  const HistorialScreen({super.key});

  static const String routeName = "/HistorialScreen";

  @override
  State<HistorialScreen> createState() => _HistorialScreenState();
}

class _HistorialScreenState extends State<HistorialScreen> {
  final ApiService _apiService = ApiService();
  List<Info> _historial = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadHistorial();
  }

  Future<void> _loadHistorial() async {
    try {
      final data = await _apiService.fetchHistorial();
      setState(() {
        _historial = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _historial = [];
        _isLoading = false;
      });
      print('Error al cargar datos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial Académico'),
        actions: [
          RefreshButton(
            onPressed: () {
              setState(() => _isLoading = true);
              _loadHistorial();
            },
          ),
        ],
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : HistorialWidget(historial: _historial),
    );
  }
}

class HistorialWidget extends StatelessWidget {
  final List<Info> historial;

  const HistorialWidget({super.key, required this.historial});

  @override
  Widget build(BuildContext context) {
    if (historial.isEmpty) {
      return const Center(child: Text('No se encontraron datos'));
    }

    return SemestresWidget(historial: historial);
  }
}

class RefreshButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RefreshButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: const Icon(Icons.refresh), onPressed: onPressed);
  }
}

class SemestresWidget extends StatelessWidget {
  final List<Info> historial;

  const SemestresWidget({super.key, required this.historial});

  @override
  Widget build(BuildContext context) {
    final semestres = _getSemestresOrdenados();

    return ListView.builder(
      itemCount: semestres.length,
      itemBuilder: (context, index) {
        final semestre = semestres[index];
        final materiasSemestre =
            historial.where((m) => m.semestre == semestre).toList();

        return SemestreExpansionTile(
          semestre: semestre,
          materias: materiasSemestre,
        );
      },
    );
  }

  List<String> _getSemestresOrdenados() {
    return historial.map((m) => m.semestre).toSet().toList()
      ..sort((a, b) => int.parse(a).compareTo(int.parse(b)));
  }
}
