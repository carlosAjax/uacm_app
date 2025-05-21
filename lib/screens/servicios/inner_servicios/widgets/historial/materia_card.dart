import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uacm_app/model/info.dart';

class Materiacard extends StatelessWidget {
  const Materiacard({super.key, required this.materia});
  final Info materia;

  @override
  Widget build(BuildContext context) {
    return BackInDown(
      child: Card(
        color: Theme.of(context).colorScheme.onSecondary,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                materia.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              GradeChip(materia: materia),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Clave: ${materia.clave}'),
                  Text('creditos: ${materia.creditos}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradeChip extends StatelessWidget {
  const GradeChip({super.key, required this.materia});
  final Info materia;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Calificación:'),
        Text('(${materia.califletra})'),
        Chip(
          label: Text(
            materia.eval,
            // style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
        ),
      ],
    );
  }
}

class SemestreExpansionTile extends StatelessWidget {
  final String semestre;
  final List<Info> materias;

  const SemestreExpansionTile({
    super.key,
    required this.semestre,
    required this.materias,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        collapsedBackgroundColor: Theme.of(context).colorScheme.onPrimary,

        collapsedShape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),

        title: Text('Semestre $semestre'),
        children:
            materias.map((materia) => Materiacard(materia: materia)).toList(),
      ),
    );
  }
}
