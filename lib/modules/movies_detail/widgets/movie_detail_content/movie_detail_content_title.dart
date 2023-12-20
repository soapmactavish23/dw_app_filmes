// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:app_filmes/models/movie_detail_model.dart';

class MovieDetailContentTitle extends StatelessWidget {
  final MovieDetailModel? movie;
  const MovieDetailContentTitle({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movie?.title ?? '',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
