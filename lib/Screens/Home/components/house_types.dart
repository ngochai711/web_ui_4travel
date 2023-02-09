import 'package:flutter/material.dart';

class HouseTypes extends StatelessWidget {
  const HouseTypes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Types(
          image_link: '../assets/images/house.png', 
          status: 'Nhà nhỏ',),
            Types(
          image_link: '../assets/images/cabin.png', 
          status: 'Cabin',),
          Types(
          image_link: '../assets/images/tropical.png', 
          status: 'Nhiệt đới',),
            Types(
          image_link: '../assets/images/countryside.png', 
          status: 'Nông thôn',),
          Types(
          image_link: '../assets/images/island.png', 
          status: 'Đảo',),
          Types(
          image_link: '../assets/images/trending.png', 
          status: 'Được ưa chuộng',),
            Types(
          image_link: '../assets/images/barn.png', 
          status: 'Nhà nông trại',),
            Types(
          image_link: '../assets/images/beach.png', 
          status: 'Bãi biển',),
          Types(
          image_link: '../assets/images/skiing.png', 
          status: 'Trượt tuyết',),
            Types(
          image_link: '../assets/images/camping.png', 
          status: 'Cắm trại',),
            Types(
          image_link: '../assets/images/golf.png', 
          status: 'Chơi golf',),
          ],
        ) 
      ],
    );
  }
}

class Types extends StatelessWidget {
  const Types({
    Key? key, required this.image_link, required this.status,
  }) : super(key: key);
final String image_link;
final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column (
        children: <Widget>[
          Image.asset(image_link,height: 48, width: 42.24),
          Text(status), 
        ],
      )
    );
  }
}