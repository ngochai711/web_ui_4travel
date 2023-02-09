import 'package:flutter/material.dart';
import 'package:web_ui_4travel/Screens/Home/components/header_bar.dart';
import 'package:web_ui_4travel/Screens/Home/components/header_container.dart';

import '../../constant.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  
  get kHeaderHeight => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailHeader(size: size),
            Container(
              constraints: BoxConstraints(maxWidth: size.width - 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hallim-eub, Cheju, Hàn Quốc",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Image.asset("../assets/images/star.png", height: 28, width: 24,),
                      Text("4,83",style: TextStyle(fontSize: 24),),

                    ],
                  ),
                  Container(
                    child: Row(children: <Widget>[
                      
                    ]),
                  ),
            ]),
            ),
          ],
        ),
      )
    );
  }
}

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: kHeaderHeight,
            padding: const EdgeInsets.only(right: 80, left: 80),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("../assets/images/test.jpg"),
                    Spacer(),
                    OptionUser(),
                  ],
                )
              ],
            )
          ),
        ],
      ),    
    );
  }
}