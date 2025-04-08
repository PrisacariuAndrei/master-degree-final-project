import 'package:feaa/core/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class TopBarSearch extends StatefulWidget {
  const TopBarSearch({super.key});

  @override
  State<TopBarSearch> createState() => _TopBarSearchState();
}

class _TopBarSearchState extends State<TopBarSearch> {
  @override
  Widget build(BuildContext context) {
    return const KTextField(hasError: false, );
  }
}
