import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;

  const ImageWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      height: 210,
      width: 120,
      clipBehavior: Clip.hardEdge,
      child: Image.network(
        imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
