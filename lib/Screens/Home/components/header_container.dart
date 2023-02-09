import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'header_bar.dart';
import 'house_types.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
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
                HeadBar()
              ],
            )
          ),
          Container(
            width: size.width,
            height: kHeaderHeight,
            padding: const EdgeInsets.only(right: 100, left: 100),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 1/3, color: Colors.grey)),
              color: Colors.white,
            ),
            child: HouseTypes(),
          ),
        ],
        )
    );
  }
}

