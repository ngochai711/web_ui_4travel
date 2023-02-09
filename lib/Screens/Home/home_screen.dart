import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web_ui_4travel/constant.dart';
import 'package:web_ui_4travel/model/product_model.dart';

import 'components/header_bar.dart';
import 'components/header_container.dart';
import 'components/house_types.dart';
import 'components/product_list.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderContainer(size: size),
            ProductList(size: size),
          ],
        ),
      )
    );
  }
}







