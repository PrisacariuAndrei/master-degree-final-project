import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:feaa/features/study_programs/presentation/widgets/sp_list_item.dart';
import 'package:flutter/material.dart';

class StudyProgramsList extends StatelessWidget {
  const StudyProgramsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopAppBar(
        title: Text('Programele de studiu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SpListItem(
              title: 'Licență - IF',
              imagePath: 'assets/images/licenta_local.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Licență - ID',
              imagePath: 'assets/images/licenta_dis.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Master',
              imagePath: 'assets/images/master.png',
            ),
            SizedBox(height: 8.0),
            SpListItem(
              title: 'Doctorat',
              imagePath: 'assets/images/phd.png',
            ),
          ],
        ),
      ),
    );
  }
}
