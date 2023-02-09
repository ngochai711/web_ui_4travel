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
                      Text(
                        "Hallim-eub, Cheju, Hàn Quốc",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "../assets/images/star.png",
                            height: 28,
                            width: 24,
                          ),
                          Text(
                            " 4,83 ",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            ".",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " 83 đánh giá ",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            ". ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "../assets/images/owner.png",
                            height: 28,
                            width: 24,
                          ),
                          Text(
                            " Chủ nhà siêu cấp ",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            ".  ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hallim-eub, Cheju, Hàn Quốc",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          Spacer(),
                          Image.asset(
                            "../assets/images/share.png",
                            height: 28,
                            width: 24,
                          ),
                          Text(" "),
                          Text(
                            "Chia sẻ ",
                            style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                          Image.asset(
                            "../assets/images/heart.png",
                            height: 28,
                            width: 24,
                          ),
                          Text(" "),
                          Text(
                            "Lưu",
                            style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      Container(
                        child: Row(children: <Widget>[
                          Image.asset(
                            "../assets/images/home_stay.jpg",
                            height: 500,
                            width: 1235,
                          )
                        ]),
                      ),
                      Container(
                        width: 700,
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Toàn bộ căn hộ cho thuê. Chủ nhà Trang",
                                  style: TextStyle(fontSize: 28),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "3 khách",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "1 phòng ngủ",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "1 giường",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "1 phòng tắm",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: <Widget>[
                                Image.asset("../assets/images/user.png",
                                    height: 40, width: 40),
                                Text(""),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: [
                                    Text(
                                      "Liên hệ chủ nhà",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ));
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
              )),
        ],
      ),
    );
  }
}
