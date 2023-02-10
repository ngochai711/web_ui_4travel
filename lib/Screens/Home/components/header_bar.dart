import 'package:flutter/material.dart';


class HeadBar extends StatelessWidget {
  const HeadBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset("../assets/images/test.jpg"),
        Spacer(flex: 5),
        HeaderWebFeature(),
        Spacer(),
        OptionUser(),
      ],
    );
  }
}

class OptionUser extends StatelessWidget {
  const OptionUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(children: [
        Row(
          children: <Widget>[
            HeaderFeature(
              press: () {  }, 
              title: "Cho thuê chỗ ở qua UStay",
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Row(children: <Widget>[ Image.asset("../assets/images/language.png",height: 19,width: 18),]),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 1/7),
                color: Colors.white,
                borderRadius: BorderRadius.circular(46),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              ),
              child: Row(children: <Widget>[ 
                Container(
                  padding: const EdgeInsets.only(right: 20,left: 10),
                  child: Row(children: <Widget>[ Image.asset("../assets/images/lines.png",height: 19,width: 18),]),
                ),
                Container(
                  child: Row(children: <Widget>[ Image.asset("../assets/images/user.png",height: 30,width: 30),]),
                ),
                ]),
            ),
          ],
        )
      ]),
    );
  }
}
//3 Muc chinh
class HeaderWebFeature extends StatelessWidget {
  const HeaderWebFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1/7),
              color: Colors.white,
              borderRadius: BorderRadius.circular(46),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16),
                ),
              ],
            ),
            child: Row(
              children: [
                HeaderFeature(
                  press: () {  }, 
                  title: "Địa điểm hiện tại",
                ),
                HeaderFeature(
                  press: () {  }, 
                  title: "|",
                ),
                HeaderFeature(
                  press: () {  }, 
                  title: "Tuần bất kỳ",
                ),
                HeaderFeature(
                  press: () {  }, 
                  title: "|",
                ),
                HeaderFeature(
                  press: () {  }, 
                  title: "Thêm khách",
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class HeaderFeature extends StatelessWidget {
  const HeaderFeature({
    Key? key, required this.title, required this.press,
  }) : super(key: key);
final String title;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: press,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
        )
      ],
    );
  }
}