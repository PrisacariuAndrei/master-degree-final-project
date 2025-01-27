import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/presentation/pages/top_app_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text('Cauta in Portalul FEAA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: _getBorder(),
                focusedBorder: _getBorder(),
                enabledBorder: _getBorder(),
                labelText: 'Cauta in aplicatie',
              ),
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
            )
          ],
        ),
      ),
    );
  }

  _getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.gray2),
    );
  }
}
