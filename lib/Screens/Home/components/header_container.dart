import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'header_bar.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 80,
            color: Colors.white,
            child: 
                const HeadBar()
            
          ),
           Divider(
              thickness: 0.5,
              color: ColorConstants.borderColor1,
            ),
        ],
        )
    );
  }
}

