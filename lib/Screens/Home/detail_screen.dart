import 'package:flutter/material.dart';
import 'package:web_ui_4travel/Screens/Home/components/custom_button.dart';
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
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1/3, color: Colors.grey),
                                      bottom: BorderSide(width: 1/3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text("Our apartment has 1 living room, dining space, 1 bedroom (1 double bed and sofa bed), 1 bathroom and the balcony.\n",style: TextStyle(fontSize: 20), ),
                                    Text("- The bedroom: Our view from the bedroom is romantic with the view of the grand hill shimmering. We provide air-conditioner, the bed topper, and the bolster.\n",style: TextStyle(fontSize: 20), ),
                                    Text("- Kitchen: necessary facilities is provided to cook a delicious meal...\n",style: TextStyle(fontSize: 20), ),
                                    Row(
                                      children: <Widget>[
                                        Text("Hiển thị thêm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold), ),
                                        Image.asset("../assets/images/vector.jpg"),
                                    ],)
                                    
                                  ]),
                                ),
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.only(bottom: 20,left: 20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1/3, color: Colors.grey),
                                      bottom: BorderSide(width: 1/3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                    Image.asset("../assets/images/logo_cover.jpg",height: 56,width: 140,),
                                    Text("Mọi đặt phòng đều được bảo vệ miễn phí trong trường hợp Chủ nhà hủy, thông tin nhà/phòng cho thuê không chính xác và những vấn đề khác như sự cố trong quá trình nhận phòng.\n",style: TextStyle(fontSize: 20),),
                                    Text("Tìm hiểu thêm", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                                  ]),
                                ),
                                Container(
                                  width: kWidth,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(width: 1/3, color: Colors.grey),
                                      bottom: BorderSide(width: 1/3, color: Colors.grey),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Text("Nơi này có những gì cho bạn",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                                    Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [Image.asset("../assets/images/kitchen.jpg",height: 31, width: 36,),Text(" Bếp",style: TextStyle(fontSize: 18),)],),
                                              Text(""),
                                              Row(children: [Image.asset("../assets/images/wifi.jpg",height: 31, width: 36,),Text(" Wifi",style: TextStyle(fontSize: 18),)],),
                                              Text(""),
                                              Row(children: [Image.asset("../assets/images/private_space.jpg",height: 31, width: 36,),Text(" Không gian riêng để làm việc",style: TextStyle(fontSize: 18),)],),
                                            ]
                                          ),
                                        ),
                                        Text("         "),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(children: [Image.asset("../assets/images/private_pool.jpg",height: 31, width: 36,),Text(" Hồ bơi riêng",style: TextStyle(fontSize: 18),)],),
                                              Text(""),
                                              Row(children: [Image.asset("../assets/images/hot_water.jpg",height: 31, width: 36,),Text(" Nước nóng",style: TextStyle(fontSize: 18),)],),
                                              Text(""),
                                              Row(children: [Image.asset("../assets/images/free_parking.jpg",height: 31, width: 36,),Text(" Chỗ đỗ xe miễn phí tại nơi ở",style: TextStyle(fontSize: 18),)],),
                                            ]
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Text("Hiển thị tất cả 18 tiện nghi",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                                        ),
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
                                height: 580,
                                padding: EdgeInsets.all(40),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text("\u002423",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                        Text("đêm",style: TextStyle(fontSize: 18),),
                                        Spacer(),
                                        Image.asset("../assets/images/star.png",height: 24,width: 24,),
                                        Text(" 4,83",style: TextStyle(fontSize: 18),),
                                        Text("  .  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                        Text("83 đánh giá",style: TextStyle(fontSize: 18),),
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
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  border: Border(right: BorderSide(width: 1),bottom: BorderSide(width: 1)),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text("Nhận phòng",style: TextStyle(fontSize: 16,color: Color(0xFFD70465)),),Text("8/1/2023",style: TextStyle(fontSize: 16))],)),
                                              Container(
                                                width: 158,
                                                height: 60,
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  border: Border(bottom: BorderSide(width: 1)),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text("Trả phòng",style: TextStyle(fontSize: 16,color: Color(0xFFD70465)),),Text("15/1/2023",style: TextStyle(fontSize: 16))],)),

                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 20, bottom: 20, left: 10,right: 10),
                                            child: Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text("Khách",style: TextStyle(fontSize: 16),),Text("1 Khách",style: TextStyle(fontSize: 16))],),
                                                Spacer(),
                                                DropdownButtonExample(),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text("\n"),
                                    CustomButton(text: "Đặt Phòng", isFill: true),
                                    Text("\n\n"),
                                    Row(children: [
                                      Text("\u002423 x 8 đêm",style: TextStyle(fontSize: 18,decoration: TextDecoration.underline),),
                                      Spacer(),
                                      Text("\u0024184",style: TextStyle(fontSize: 18),),
                                    ],),
                                    Text(""),
                                    Row(children: [
                                      Text("Phí vệ sinh",style: TextStyle(fontSize: 18,decoration: TextDecoration.underline),),
                                      Spacer(),
                                      Text("\u00246",style: TextStyle(fontSize: 18),),
                                    ],),
                                    Text(""),
                                    Row(children: [
                                      Text("Phí dịch vụ",style: TextStyle(fontSize: 18,decoration: TextDecoration.underline),),
                                      Spacer(),
                                      Text("\u002427",style: TextStyle(fontSize: 18),),
                                    ],),
                                    Text("\n"),
                                    Container(
                                      width: 400,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border(top: BorderSide(width: 1,color:Colors.grey)),
                                      ),
                                      child: Row(
                                        children: [
                                          Text("Tổng trước thuế",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),
                                          Spacer(),
                                          Text("\u0024217",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
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
                      Image.asset("../assets/images/logo.png",width: 70,height: 70,),
                      Text("ustay",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 247, 110, 17),fontWeight: FontWeight.bold),),
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
