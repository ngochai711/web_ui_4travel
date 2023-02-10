import 'package:flutter/material.dart';
import 'package:web_ui_4travel/Screens/Home/components/custom_button.dart';
import 'package:web_ui_4travel/Screens/Home/components/header_bar.dart';
import 'package:web_ui_4travel/Screens/Home/components/header_container.dart';
import 'package:web_ui_4travel/Screens/checkout/checkout.dart';

import '../../constant.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});

  get kHeaderHeight => null;
  var whoList = [
    WhoWillGo(
        index: 0,
        title: 'Người lớn',
        subTitle: 'Từ 13 tuổi trở lên',
        amount: 0),
    WhoWillGo(index: 1, title: 'Trẻ em', subTitle: 'Độ tuổi 2 - 12', amount: 0),
    WhoWillGo(index: 2, title: 'Em bé', subTitle: 'Dưới 2 tuổi', amount: 0),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
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
                            fontSize: 30, fontWeight: FontWeight.bold),
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
                          ),
                          Text(
                            ".",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " 83 đánh giá ",
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
                          ),
                          Text(
                            ".  ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hallim-eub, Cheju, Hàn Quốc",
                            style: TextStyle(
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
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          Image.asset(
                            "../assets/images/heart.png",
                            height: 28,
                            width: 24,
                          ),
                          Text(" "),
                          Text(
                            "Lưu",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                      Text(""),
                      Container(
                        child: Row(children: <Widget>[
                          Image.asset(
                            "../assets/images/home_stay.jpg",
                            height: 480,
                            width: 1235,
                          )
                        ]),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Toàn bộ căn hộ cho thuê. Chủ nhà Trang",
                                            style: TextStyle(fontSize: 28),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "3 khách",
                                              ),
                                              Text(
                                                " . ",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "1 phòng ngủ",
                                              ),
                                              Text(
                                                " . ",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "1 giường",
                                              ),
                                              Text(
                                                " . ",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "1 phòng tắm",
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: <Widget>[
                                          Image.asset(
                                              "../assets/images/user.png",
                                              height: 40,
                                              width: 40),
                                          Text(""),
                                          SizedBox(
                                            height: 40,
                                            child: CustomButton(
                                                text: 'Liên hệ chủ nhà',
                                                isFill: false,
                                                onPress: () {}),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            "Our apartment has 1 living room, dining space, 1 bedroom (1 double bed and sofa bed), 1 bathroom and the balcony.\n"),
                                        Text(
                                            "- The bedroom: Our view from the bedroom is romantic with the view of the grand hill shimmering. We provide air-conditioner, the bed topper, and the bolster.\n"),
                                        Text(
                                            "- Kitchen: necessary facilities is provided to cook a delicious meal...\n"),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "Hiển thị thêm",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Image.asset(
                                                "../assets/images/vector.jpg"),
                                          ],
                                        )
                                      ]),
                                ),
                                Container(
                                  width: kWidth,
                                  padding:
                                      EdgeInsets.only(bottom: 20, left: 20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Image.asset(
                                          "../assets/images/logo_cover.jpg",
                                          height: 56,
                                          width: 140,
                                        ),
                                        Text(
                                            "Mọi đặt phòng đều được bảo vệ miễn phí trong trường hợp Chủ nhà hủy, thông tin nhà/phòng cho thuê không chính xác và những vấn đề khác như sự cố trong quá trình nhận phòng.\n"),
                                        Text(
                                          "Tìm hiểu thêm",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ]),
                                ),
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                      bottom: BorderSide(
                                          width: 1 / 3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nơi này có những gì cho bạn\n",
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/kitchen.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(" Bếp")
                                                      ],
                                                    ),
                                                    Text(""),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/wifi.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(" Wifi")
                                                      ],
                                                    ),
                                                    Text(""),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/private_space.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(
                                                            " Không gian riêng để làm việc")
                                                      ],
                                                    ),
                                                  ]),
                                            ),
                                            Text("         "),
                                            Container(
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/private_pool.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(" Hồ bơi riêng")
                                                      ],
                                                    ),
                                                    Text(""),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/hot_water.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(" Nước nóng")
                                                      ],
                                                    ),
                                                    Text(""),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          "../assets/images/free_parking.jpg",
                                                          height: 31,
                                                          width: 36,
                                                        ),
                                                        Text(
                                                            " Chỗ đỗ xe miễn phí tại nơi ở")
                                                      ],
                                                    ),
                                                  ]),
                                            ),
                                            // SizedBox(
                                            //   height: 60,
                                            //   width: 140,
                                            //   child: CustomButton(
                                            //     text:
                                            //         'Hiển thị tất cả 18 tiện nghi',
                                            //     isFill: false,
                                            //     onPress: () {},
                                            //   ),
                                            // )
                                          ],
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 435,
                            height: 680,
                            color: Colors.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 400,
                                    height: 544,
                                    padding: EdgeInsets.all(40),
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: [
                                            Text(
                                              "\u002423",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text("đêm"),
                                            Spacer(),
                                            Image.asset(
                                              "../assets/images/star.png",
                                              height: 24,
                                              width: 24,
                                            ),
                                            Text(" 4,83"),
                                            Text(
                                              "  .  ",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text("83 đánh giá"),
                                          ],
                                        ),
                                        Text(""),
                                        Container(
                                          width: 400,
                                          height: 150,
                                          //padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                      width: 158,
                                                      height: 60,
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            right: BorderSide(
                                                                width: 1),
                                                            bottom: BorderSide(
                                                                width: 1)),
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Nhận phòng",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFFF76E11)),
                                                          ),
                                                          Text("8/1/2023")
                                                        ],
                                                      )),
                                                  Container(
                                                      width: 158,
                                                      height: 60,
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                width: 1)),
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Trả phòng",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xFFF76E11)),
                                                          ),
                                                          Text("15/1/2023")
                                                        ],
                                                      )),
                                                ],
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: 20,
                                                    bottom: 20,
                                                    left: 10,
                                                    right: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return StatefulBuilder(
                                                          builder: (context,
                                                                  updateState) =>
                                                              AlertDialog(
                                                            content: Container(
                                                              height: 280,
                                                              width: 300,
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    const Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left:
                                                                                20,
                                                                            top:
                                                                                20),
                                                                        child:
                                                                            Text(
                                                                          'Ai sẽ đến',
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                20,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            200,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(3.0),
                                                                          child:
                                                                              whoGoWidget(updateState),
                                                                        )),
                                                                  ]),
                                                            ),
                                                            actions: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        right:
                                                                            16,
                                                                        bottom:
                                                                            16),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                    "Ok",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("Khách"),
                                                          Text("1 Khách")
                                                        ],
                                                      ),
                                                      Spacer(),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("\n"),
                                        SizedBox(
                                          height: 45,
                                          width: 300,
                                          child: CustomButton(
                                            text: "Đặt Phòng",
                                            isFill: true,
                                            onPress: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CheckOutPage())),
                                          ),
                                        ),
                                        Text("\n\n"),
                                        Row(
                                          children: [
                                            Text(
                                              "\u002423 x 8 đêm",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            Spacer(),
                                            Text("\u0024184"),
                                          ],
                                        ),
                                        Text(""),
                                        Row(
                                          children: [
                                            Text(
                                              "Phí vệ sinh",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            Spacer(),
                                            Text("\u00246"),
                                          ],
                                        ),
                                        Text(""),
                                        Row(
                                          children: [
                                            Text(
                                              "Phí dịch vụ",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            Spacer(),
                                            Text("\u002427"),
                                          ],
                                        ),
                                        Text("\n"),
                                        Container(
                                          width: 400,
                                          height: 30,
                                          padding: EdgeInsets.only(top: 10),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    width: 1,
                                                    color: Colors.grey)),
                                          ),
                                          child: Row(
                                            children: [
                                              Text("Tổng trước thuế",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                              Spacer(),
                                              Text(
                                                "\u0024217",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 150),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star),
                                SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  '4.83 • 83 Đánh giá',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 80,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Mức độ sạch sẽ',
                                              style: TextStyle(),
                                            ),
                                            const Text(
                                              'Giao tiếp',
                                              style: TextStyle(),
                                            ),
                                            const Text(
                                              'Nhận phòng',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Độ chính xác',
                                              style: TextStyle(),
                                            ),
                                            const Text(
                                              'Vị trí',
                                              style: TextStyle(),
                                            ),
                                            const Text(
                                              'Giá trị',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                            SizedBox(
                                                height: 20,
                                                child: CustomSlider(context)),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReviewItem('Vy', 'tháng 11 năm 2022',
                                      'Thời gian linh hoạt'),
                                  ReviewItem('Tú', 'tháng 11 năm 2022',
                                      'Nhà sạch sẽ, nội thất tiện nghi đầy đủ. Có dịp sẽ quay lại.'),
                                  ReviewItem('Trung', 'tháng 11 năm 2022',
                                      'Dịch vụ class of world , đỉnh view đẹp phòng đầy đủ tiện nghi ạ')
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReviewItem('Duc Thag', 'tháng 11 năm 2022',
                                      'View đẹp, riêng tư, thoáng mát, giá cả hợp lý.'),
                                  ReviewItem(
                                      'Thị Phương Trang',
                                      'tháng 11 năm 2022',
                                      'Mình về sớm hơn dự kiến được chị chủ nhà offer refund lại một phần.'),
                                  ReviewItem('Trung', 'tháng 11 năm 2022',
                                      'Một nơi để nghĩ dưỡng .')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 250,
                        height: 45,
                        child: CustomButton(
                          isFill: false,
                          text: 'Hiển thị tất cả 83 đánh giá',
                          onPress: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20),
                        child: Divider(color: Colors.black.withOpacity(0.6)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Nơi bạn sẽ đến',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        child: Image(
                            image: AssetImage('../assets/images/map.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu, Việt Nam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Tran Phu street is the most beautiful str. in Vung Tau City and you can easy to walk along the Bai Dau to Bai Truoc from the apartment.- Vung Tau local and seafood, LotteMart supermarket can be driven to by motobike in 10-15mins- Gành Hào seafood restaurant: it is direct Seaview next to the beach, the food and rate are fine. We highly recommend this place...',
                                style: TextStyle(
                                  height: 1.3,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Hiển thị thêm',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 14,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Divider(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              Text(
                                'Những điều cần biết',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nội quy nhà',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Nhận phòng sau 14:00\nTrả phòng trước 12:00\nTối đa 3 khách',
                                          style: TextStyle(height: 2),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Hiển thị thêm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 14,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'An toàn và chỗ ở',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Camera an ninh/thiết bị ghi\nMáy phát hiện khí CO\nMáy báo khói',
                                          style: TextStyle(height: 2),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Hiển thị thêm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 14,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Chính sách hủy',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Hủy miễn phí trước 3 thg 2.\nHãy đọc toàn bộ chính sách hủy của Chủ nhà/Người tổ chức được áp dụng ngay cả khi bạn hủy vì ốm bệnh hoặc gián đoạn ',
                                          style: TextStyle(height: 2),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Hiển thị thêm',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 14,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                            ]),
                      )
                    ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 170),
                width: MediaQuery.of(context).size.width,
                height: 310,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    border: Border(
                        top:
                            BorderSide(color: Colors.black.withOpacity(0.26)))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chính sách hủy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                'Trung tâm trợ giúp\n4TravelCover\nHỗ trợ người khuyết tật\nCác tùy chọn hủy\nBiện pháp ứng phó với đại dịch COVID-19 của chúng tôi\nBáo cáo lo ngại của hàng xóm',
                                style: TextStyle(
                                    height: 2.4,
                                    color: Colors.black.withOpacity(0.63),
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cộng đồng',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                'Nhà ở cứu trợ\nChống phân biệt đối xử',
                                style: TextStyle(
                                    height: 2.4,
                                    color: Colors.black.withOpacity(0.63),
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Đón tiếp khách',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                'Cho thuê nhà trên 4Travel\n4TravelCover cho Chủ nhà\nXem tài nguyên đón tiếp khách\nTruy cập diễn đàn cộng đồng\nĐón tiếp khách có trách nhiệm',
                                style: TextStyle(
                                    height: 2.4,
                                    color: Colors.black.withOpacity(0.63),
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4Travel',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                'Trang tin tức\nTìm hiểu các tính năng mới\nThư ngỏ từ các nhà sáng lập\nCơ hội nghề nghiệp\nNhà đầu tư',
                                style: TextStyle(
                                    height: 2.4,
                                    color: Colors.black.withOpacity(0.63),
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Padding ReviewItem(name, date, review) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const SizedBox(
              height: 40,
              child: Image(image: AssetImage('../assets/images/user.png')),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Tháng 11 năm 2022',
                  style: TextStyle(
                      fontSize: 12, color: Colors.black.withOpacity(0.6)),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          review,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ]),
    );
  }

  Row CustomSlider(BuildContext context) {
    return Row(
      children: [
        SliderTheme(
          child: Slider(
            value: 95,
            max: 100,
            min: 0,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            onChanged: (double value) {},
          ),
          data: SliderTheme.of(context).copyWith(
              trackHeight: 2,
              thumbColor: Colors.transparent,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0.0)),
        ),
        // SizedBox(
        //   width: ,
        // ),
        const Text(
          '4,9',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget whoGoWidget(StateSetter updateState) {
    final whoWidget =
        List.generate(3, (index) => _whoList(whoList[index], updateState));
    return GridView.count(
      crossAxisCount: 1,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 5,
      controller: ScrollController(keepScrollOffset: true),
      shrinkWrap: true,
      children: whoWidget,
    );
  }

  Widget _whoList(WhoWillGo who, StateSetter updateState) {
    var index = whoList.indexWhere(
      (element) => element == who,
    );
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ListTile(
          title: Text(
            who.title!,
          ),
          subtitle: Text(
            who.subTitle!,
            style: TextStyle(color: ColorConstants.bottomBarItemSecondary),
          ),
          trailing: FittedBox(
            child: Row(
              children: [
                IconButton(
                    iconSize: 25,
                    color: who.amount == 0 ? Colors.grey : Colors.black,
                    onPressed: () {
                      if (who.amount == 0) return;
                      updateState(() {
                        whoList.removeAt(index);
                        whoList.insert(
                            index, who.copyWith(amount: who.amount! - 1));
                      });
                    },
                    icon: const Icon(Icons.remove_circle_outline)),
                Text(
                  who.amount!.toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                IconButton(
                    iconSize: 25,
                    color: Colors.black,
                    onPressed: () {
                      updateState(() {
                        whoList.removeAt(index);
                        whoList.insert(
                            index, who.copyWith(amount: who.amount! + 1));
                      });
                    },
                    icon: const Icon(Icons.add_circle_outline)),
              ],
            ),
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
                      Image.asset(
                        "../assets/images/logo.png",
                        width: 70,
                        height: 70,
                      ),
                      Text(
                        "UStay",
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 247, 110, 17),
                            fontWeight: FontWeight.bold),
                      ),
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.isFill,
    required this.onPress,
  }) : super(key: key);

  final String text;
  final bool isFill;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            // padding: MaterialStateProperty.all(
            //     const EdgeInsets.symmetric(horizontal: 128, vertical: 16)),
            backgroundColor: MaterialStateProperty.all(
                !isFill ? Colors.white : const Color(0xFFF76E11)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                        color: !isFill
                            ? Colors.black
                            : const Color(0xFFF76E11))))),
        onPressed: () {
          onPress();
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: !isFill ? Colors.black : Colors.white, fontSize: 16),
        ));
  }
}

class ItemPlaceOffer extends StatelessWidget {
  const ItemPlaceOffer({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(
            icon,
            size: 32,
          )
        ],
      ),
    );
  }
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class WhoWillGo {
  int? index;
  String? title;
  String? subTitle;
  int? amount;
  WhoWillGo({
    this.index,
    this.title,
    this.subTitle,
    this.amount,
  });

  WhoWillGo copyWith({
    int? index,
    String? title,
    String? subTitle,
    int? amount,
  }) {
    return WhoWillGo(
      index: index ?? this.index,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      amount: amount ?? this.amount,
    );
  }
}

class DataRoom {
  int? index;
  String? text;
  bool? isCheck = false;
  DataRoom({this.index, this.text, this.isCheck});

  DataRoom copyWith({
    int? index,
    String? text,
    bool? isCheck,
  }) {
    return DataRoom(
      index: index ?? this.index,
      text: text ?? this.text,
      isCheck: isCheck ?? this.isCheck,
    );
  }
}

class DataHouse {
  int? index;
  String? text;
  String? svg;
  bool? isCheck = false;
  DataHouse({this.index, this.text, this.svg, this.isCheck});

  DataHouse copyWith({
    int? index,
    String? text,
    String? svg,
    bool? isCheck,
  }) {
    return DataHouse(
      index: index ?? this.index,
      text: text ?? this.text,
      svg: svg ?? this.svg,
      isCheck: isCheck ?? this.isCheck,
    );
  }
}
