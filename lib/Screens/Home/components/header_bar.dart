import 'package:flutter/material.dart';
import 'package:web_ui_4travel/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeadBar extends StatelessWidget {
  const HeadBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: size.width / 9),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Image.asset("assets/images/logo.png"),
                      Text(
                        'UStay',
                        style: TextStyle(
                            color: ColorConstants.bottomBarItemPrimary,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * 0.1),
                  child: const HeaderWebFeature(),
                ))),
        Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * 0.1),
                  child: const OptionUser(),
                ))),
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // HeaderFeature(
        //   press: () {  },
        //   title: "Cho thuê chỗ ở qua UStay",
        // ),
        // Container(
        //   padding: const EdgeInsets.only(right: 20),
        //   child: Row(children: <Widget>[
        //     Image.asset("../assets/images/language.png", height: 19, width: 18),
        //   ]),
        // ),
        Container(
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: ColorConstants.borderColor1),
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                blurStyle: BlurStyle.outer,
                color: ColorConstants.borderColor1,
              ),
            ],
          ),
          child: SizedBox(
            width: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("../assets/images/lines.png",
                      height: 15, width: 15),
                  Image.asset("../assets/images/user.png",
                      height: 20, width: 20),
                ]),
          ),
        ),
      ],
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
    return Container(
      height: 45,
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: ColorConstants.borderColor1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            blurStyle: BlurStyle.outer,
            color: ColorConstants.borderColor1,
          ),
        ],
      ),
      // child: const Center(
      //   child: ListTile(
      //     leading: Icon(Icons.map),
      //     title: Text('Địa chỉ hiện tai'),
      //     subtitle: Text('101 Hung Vuong, TpHCm'),
      //   ),
      // )
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SvgPicture.asset('assets/icons/map.svg'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Địa chỉ hiện tại',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '101 Hung Vuong, TpHcm',
                  style:
                      TextStyle(fontSize: 13, color: ColorConstants.textColor1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderFeature extends StatelessWidget {
  const HeaderFeature({
    Key? key,
    required this.title,
    required this.press,
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
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
        )
      ],
    );
  }
}
