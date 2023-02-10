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
                      const Text(
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
                          const Text(
                            " 4,83 ",
                            style: TextStyle(fontSize: 17),
                          ),
                          const Text(
                            ".",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " 83 đánh giá ",
                            style: TextStyle(fontSize: 17),
                          ),
                          const Text(
                            ". ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            "../assets/images/owner.png",
                            height: 28,
                            width: 24,
                          ),
                          const Text(
                            " Chủ nhà siêu cấp ",
                            style: TextStyle(fontSize: 18),
                          ),
                          const Text(
                            ".  ",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Hallim-eub, Cheju, Hàn Quốc",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          const Spacer(),
                          Image.asset(
                            "../assets/images/share.png",
                            height: 28,
                            width: 24,
                          ),
                          const Text(" "),
                          const Text(
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
                          const Text(" "),
                          const Text(
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
                                const Text(
                                  "Toàn bộ căn hộ cho thuê. Chủ nhà Trang",
                                  style: TextStyle(fontSize: 28),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "3 khách",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    const Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "1 phòng ngủ",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    const Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "1 giường",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    const Text(
                                      " . ",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "1 phòng tắm",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: <Widget>[
                                Image.asset("../assets/images/user.png",
                                    height: 40, width: 40),
                                const Text(""),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: [
                                    const Text(
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
                      const SizedBox(
                        height: 1000,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star),
                              const Text('4.83 • 83 Đánh giá'),
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
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          const Text(
                                            'Giao tiếp',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          const Text(
                                            'Nhận phòng',
                                            style: TextStyle(fontSize: 17),
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
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          const Text(
                                            'Vị trí',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          const Text(
                                            'Giá trị',
                                            style: TextStyle(fontSize: 17),
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
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      const SizedBox(
                        width: 250,
                        height: 40,
                        child: CustomButton(
                            isFill: false, text: 'Hiển thị tất cả 83 đánh giá'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Divider(color: Colors.black.withOpacity(0.6)),
                      ),
                      Text(
                        'Nơi bạn sẽ đến',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Image(
                            image: AssetImage('../assets/images/map.png')),
                      ),
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
                        style: TextStyle(height: 1.3, fontSize: 17),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            'Hiển thị thêm',
                            style: TextStyle(fontWeight: FontWeight.w600),
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
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Divider(color: Colors.black.withOpacity(0.6)),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            border: Border(
                                top: BorderSide(
                                    color: Colors.black.withOpacity(0.26)))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                        'Trung tâm trợ giúp\n4TravelCover\nHỗ trợ người khuyết tật\nCác tùy chọn hủy\nBiện pháp ứng phó với đại dịch COVID-19 của chúng tôi\nBáo cáo lo ngại của hàng xóm',
                                        style: TextStyle(
                                            height: 2.4,
                                            color:
                                                Colors.black.withOpacity(0.63),
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      SizedBox(
                                        height: 6,
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
                                        'Cộng đồng',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Nhà ở cứu trợ\nChống phân biệt đối xử',
                                        style: TextStyle(
                                            height: 2.4,
                                            color:
                                                Colors.black.withOpacity(0.63),
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      SizedBox(
                                        height: 6,
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
                                        'Đón tiếp khách',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Cho thuê nhà trên 4Travel\n4TravelCover cho Chủ nhà\nXem tài nguyên đón tiếp khách\nTruy cập diễn đàn cộng đồng\nĐón tiếp khách có trách nhiệm',
                                        style: TextStyle(
                                            height: 2.4,
                                            color:
                                                Colors.black.withOpacity(0.63),
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      SizedBox(
                                        height: 6,
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
                                        '4Travel',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Trang tin tức\nTìm hiểu các tính năng mới\nThư ngỏ từ các nhà sáng lập\nCơ hội nghề nghiệp\nNhà đầu tư',
                                        style: TextStyle(
                                            height: 2.4,
                                            color:
                                                Colors.black.withOpacity(0.63),
                                            decoration:
                                                TextDecoration.underline),
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
                      // SizedBox(
                      //   height: 200,
                      // ),
                    ]),
              ),
            ],
          ),
        ));
  }

  Padding ReviewItem(name, date, review) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
                      const Spacer(),
                      const OptionUser(),
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
  }) : super(key: key);

  final String text;
  final bool isFill;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            // padding: MaterialStateProperty.all(
            //     const EdgeInsets.symmetric(horizontal: 128, vertical: 16)),
            backgroundColor: MaterialStateProperty.all(
                !isFill ? Colors.white : const Color(0xFFD70465)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                        color: !isFill
                            ? Colors.black
                            : const Color(0xFFD70465))))),
        onPressed: () {},
        child: Text(
          text,
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
