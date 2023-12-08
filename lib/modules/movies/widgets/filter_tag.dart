import 'package:app_filmes/application/ui/theme_extension.dart';
import 'package:flutter/material.dart';

class FilterTag extends StatelessWidget {
  const FilterTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 30, minWidth: 100),
      decoration: BoxDecoration(color: context.themeRed),
    );
  }
}
