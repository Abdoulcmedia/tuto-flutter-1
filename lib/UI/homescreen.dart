import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mon app bar
      appBar: AppBar(
        title: const Text('Gestion d\'une école page principale'),
      ),

      //mon body
      body: const Center(
        child: Text('Gestion d\'une école'),
      ),
    );
  }
}
