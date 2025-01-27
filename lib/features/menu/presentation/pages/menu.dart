import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:feaa/features/menu/presentation/widgets/menu_item.dart';
import 'package:flutter/material.dart';

final menuDataList = [
  'Regulamente',
  'Plata taxelor',
  'Inscrieri la Refacere',
  'Transferuri, întreruperi și reluări de studii',
  'Exmatriculări și Reînmatriculări',
  'Finalizarea studiilor | Final exams',
  'Elearning',
  'Teams',
  'Autentificare',
  'International',
  'Legaturi Utile',
  'B2E',
  'Regulamente',
  'Comisia de etică',
  'Contestații online',
  'Mariri online',
  'Secretariat',
];

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(
        title: Text('Meniu'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 1.25,
        ),
        itemCount: menuDataList.length,
        itemBuilder: (context, index) {
          return MenuItem(title: menuDataList[index]);
        },
      ),
    );
  }
}
