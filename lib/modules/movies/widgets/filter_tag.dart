import 'package:app_filmes/application/ui/theme_extension.dart';
import 'package:app_filmes/models/genres_model.dart';
import 'package:flutter/material.dart';

class FilterTag extends StatelessWidget {
  final GenresModel genresModel;
  final bool selected;
  final VoidCallback onPressed;
  const FilterTag(
      {super.key,
      required this.genresModel,
      this.selected = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(minHeight: 30, minWidth: 100),
      decoration: BoxDecoration(
        color: selected ? context.themeRed : Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          genresModel.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
