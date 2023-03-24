import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
      //mon app bar
      appBar: AppBar(
        title: const Text('Page de buisness'),
      ),

      //mon body
      body: const Center(
        child: Text('Contenu de la page de buisness'),
      ),
    );
        
  }
}
