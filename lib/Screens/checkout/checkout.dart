import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  final List<String> items = [
    'Thẻ tín dụng hoặc thẻ ghi nợ',
    'PayPal',
    'Google Pay',
  ];
  int selectedMethod=0;
  String? selectedValue;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _AppBar(),
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 30, bottom: 30),
              child: Row(
                children: [
                  Icon(Icons.chevron_left),
                  SizedBox(width: 10),
                  Text(
                    "Xác nhận và thanh toán • Airbnb",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )
                ],
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.red,
                    child: _ColumnLeft(),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  // color: Colors.green,
                  child: _ColumnRight(),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  _AppBar() {
    return Container(
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2111/2111320.png",
                  height: 35,
                  width: 35,
                )),
          ),
          Spacer(),
          Divider(
            height: 2,
          )
        ],
      ),
    );
  }

  _ColumnLeft() {
    return Padding(
      padding: const EdgeInsets.only(left: 200, right: 10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chuyến đi của bạn",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ngày",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "Chỉnh sửa",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text("Ngày 19 - Ngày 24 tháng 2"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Khách",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  "Chỉnh sửa",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text("1 khách"),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Chọn cách thanh toán",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: Column(children: [
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      border:selectedMethod==0? Border.all(width: 1.5, color: Colors.black): Border(
                      top: BorderSide(width: 1, color: Colors.grey),
                      left: BorderSide(width: 1, color: Colors.grey),
                      right: BorderSide(width: 1, color: Colors.grey),
                    ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Trả toàn bộ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                                Row(
                                  children: [
                                    Text(
                                      "\$625",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedMethod=0;
                                        });
                                      },
                                      child: Icon(selectedMethod==0?Icons.radio_button_checked:Icons.radio_button_unchecked))
                                  ],
                                )
                              ],
                            ),
                            Text(
                                "Thanh toán toàn bộ số tiền ngay bây giờ và bạn đã sẵn sàng.")
                          ]),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                        border: selectedMethod==1? Border.all(width: 1.5, color: Colors.black): Border(
                      bottom: BorderSide(width: 1, color: Colors.grey),
                      left: BorderSide(width: 1, color: Colors.grey),
                      right: BorderSide(width: 1, color: Colors.grey),
                    ),),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Trả ngay một phần, phần còn lại trả sau",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600)),
                                Row(
                                  children: [
                                    Text(
                                      "\$500",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedMethod=1;
                                        });
                                      },
                                      child: Icon(selectedMethod==1?Icons.radio_button_checked:Icons.radio_button_unchecked))
                                  ],
                                )
                              ],
                            ),
                            Container(
                                width: 380,
                                child: Text(
                                    "Thanh toán ngay \$336,37 và phần còn lại (\$288,65) sẽ tự động được trừ vào cùng phương thức thanh toán này vào 22 thg 9, 2023. Không phát sinh phụ phí."))
                          ]),
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Thanh toán bằng",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 450,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Thẻ tín dụng hoặc thẻ ghi nợ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                  onTap: _showVoucher,
                  child: Text(
                    "Nhập mã giảm giá",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  )),
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bắt buộc cho chuyến đi của bạn",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Số điện thoại",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap:_showPhone,
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Thêm",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
                "Thêm và xác nhận số điện thoại của bạn để nhận thông tin cập nhật về chuyến đi."),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Chính sách hủy",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                children:  <TextSpan>[
                  TextSpan(
                      text: 'Hủy miễn phí trước 18 thg 2. ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'Bạn được hoàn tiền một phần nếu hủy trước khi nhận phòng vào 19 thg 2. '),
                  TextSpan(  
                    // onEnter: (event) {
                    //     print(event.transform);
                    //     _launchInBrowser(Uri.parse("https://www.airbnb.com.vn/help/article/149"));
                      
                    // },
                      text: 'Tìm hiểu thêm',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 10),
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Bằng việc chọn nút bên dưới, tôi đồng ý với '),
                  TextSpan(
                      text:
                          'Nội quy nhà của Chủ nhà, Quy chuẩn chung đối với khách, Chính sách đặt lại và hoàn tiền của Airbnb, Điều khoản trả trước một phần,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(text: ' và đồng ý rằng Airbnb có thể '),
                  TextSpan(
                      text: 'tính phí vào phương thức thanh toán của tôi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(
                      text: ' nếu tôi phải chịu trách nhiệm về thiệt hại.'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Text(
                    "Xác nhận và thanh toán • Airbnb",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  _ColumnRight() {
    return Padding(
      padding: const EdgeInsets.only(right: 200, left: 10),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://a0.muscache.com/im/pictures/1a9134dd-c3d0-4135-8385-b01eed9e17b2.jpg?aki_policy=large",
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nhà trên cây",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Text("Tree House amidst forest"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 14,
                              ),
                              Text(
                                "4,95(74 đánh giá)",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Chi tiết giá",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$73,55 x 5 đêm"),
                  Text("\$367,75"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Phí dịch vụ"),
                  Text("\$51,92"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Thuế"),
                  Text("\$44,12"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tổng (USD)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$463,79",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showVoucher() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: 400,
          height: 300,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                  Text("Phiếu giảm giá"),
                  Container()
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Thêm mã giảm giá",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mã giảm giá',
                          labelStyle: TextStyle(fontSize: 14),
                          suffixIcon: Icon(Icons.add)),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
  _showPhone() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          width: 400,
          height: 300,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),
                  Text("Thêm số điện thoại"),
                  Container()
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Chúng tôi sẽ gửi cho bạn thông tin cập nhật về chuyến đi cùng một tin nhắn để xác minh số điện thoại này.",style: TextStyle(fontSize: 10),),
                  SizedBox(height: 10,),
                  // Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Text(
                  //       "Số điện thoại",
                  //       style: TextStyle(fontWeight: FontWeight.bold),
                  //     )),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Số điện thoại',
                          labelStyle: TextStyle(fontSize: 14),
                          suffixIcon: Icon(Icons.add)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Chúng tôi sẽ nhắn tin gửi mã đến cho bạn để xác nhận số điện thoại. Có áp dụng phí dữ liệu và phí tin nhắn tiêu chuẩn.",style: TextStyle(fontSize: 10)),
                  SizedBox(height: 20,),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 90,
                      color: Colors.black,
                      child: Center(child: Text("Tiếp tục",style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
