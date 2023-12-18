import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './movies_detail_controller.dart';

class MoviesDetailPage extends GetView<MoviesDetailController> {
    
    const MoviesDetailPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('MoviesDetailPage'),),
            body: Container(),
        );
    }
}