import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'header_bar.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
     
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

