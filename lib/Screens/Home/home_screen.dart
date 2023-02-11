import 'package:flutter/material.dart';
import 'package:web_ui_4travel/Screens/Home/detail_screen.dart';
import 'package:web_ui_4travel/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/chart_price_range.dart';
import 'components/header_container.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:intl/intl.dart';

import 'components/reponsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  var indexTab = 0;
  late AnimationController controller;
  late ScrollController _scrollController;
  late ScrollController _tabScrollController;
  var tabOffset = 0.0;
  // scroll controller
  bool flagShowAmenities = false;
  var index = 0;
  final tabs = <Tabs>[
    Tabs(index: 0, text: 'Nổi bật', assetIcon: 'assets/icons/outstanding.svg'),
    Tabs(index: 1, text: 'Ưa thích', assetIcon: 'assets/icons/favorite.svg'),
    Tabs(
        index: 2,
        text: 'Phòng riêng',
        assetIcon: 'assets/icons/private_room.svg'),
    Tabs(
        index: 3,
        text: 'Nhà trên biển',
        assetIcon: 'assets/icons/ship_house.svg'),
    Tabs(
        index: 4,
        text: 'Căn hộ cao cấp',
        assetIcon: 'assets/icons/top_apartment.svg'),
    Tabs(index: 5, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
    Tabs(index: 6, text: 'Nổi bật', assetIcon: 'assets/icons/outstanding.svg'),
    Tabs(index: 7, text: 'Ưa thích', assetIcon: 'assets/icons/favorite.svg'),
    Tabs(
        index: 8,
        text: 'Phòng riêng',
        assetIcon: 'assets/icons/private_room.svg'),
    Tabs(
        index: 9,
        text: 'Nhà trên biển',
        assetIcon: 'assets/icons/ship_house.svg'),
    Tabs(
        index: 10,
        text: 'Căn hộ cao cấp',
        assetIcon: 'assets/icons/top_apartment.svg'),
    Tabs(index: 11, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
    Tabs(index: 12, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
    Tabs(index: 13, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
    Tabs(index: 14, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
    Tabs(index: 15, text: 'Villa', assetIcon: 'assets/icons/villa.svg'),
  ];
  var indexTimeStay = 1;
  final timeStayList = <Time>[
    Time(index: 0, text: 'Cuối tuần'),
    Time(index: 1, text: '1 tuần'),
    Time(index: 2, text: '1 tháng'),
  ];
  var selectBedroomIndex = 0;
  var selectBedIndex = 0;
  var selectBathroomIndex = 0;
  final bedRoomList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  final bedList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  final bathRoomList = <DataRoom>[
    DataRoom(index: 0, text: 'Any'),
    DataRoom(index: 1, text: '1'),
    DataRoom(index: 2, text: '2'),
    DataRoom(index: 3, text: '3+'),
    DataRoom(index: 4, text: '5+'),
    DataRoom(index: 5, text: '7+'),
  ];

  var typeHouseList = <DataHouse>[];

  var amenitiesList = <Amenity>[];
  var placesList = <DataPlace>[];
  var whoList = <WhoWillGo>[];
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, StateSetter update) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: ColorConstants
                  .bottomBarItemPrimary, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: Colors.black, // body text color
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      update(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: tabs.length)
      ..addListener(() {
        if (!_tabController.indexIsChanging) {
          setState(() {
            indexTab = _tabController.index;
          });
        }
      });

    _scrollController = ScrollController();
    _tabScrollController = ScrollController();
    controller = BottomSheet.createAnimationController(this);

    // Animation duration for displaying the BottomSheet
    controller.duration = const Duration(seconds: 1);
    // Animation duration for retracting the BottomSheet
    controller.reverseDuration = const Duration(seconds: 1);
    // Set animation curve duration for the BottomSheet
    controller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    deleteAll();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    controller.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  void _scrollTab(bool isBack) {
    tabOffset = isBack
        ? (tabOffset - 500 < 0 ? 0 : tabOffset - 500)
        : (tabOffset + 500 > _tabScrollController.position.maxScrollExtent
            ? _tabScrollController.position.maxScrollExtent
            : tabOffset + 500);
    _tabScrollController.animateTo(tabOffset,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(size.width, 100),
          child: const HeaderContainer(),
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: ResponsiveWidget(
          largeScreen: mainScreen(),
        ));
  }

  Widget mainScreen() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 10,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  child: Container(
                    padding: const EdgeInsets.only(left: 70.0),
                    width: size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            _scrollTab(true);
                          },
                          icon: Icon(Icons.arrow_circle_left_outlined,
                              color: ColorConstants.bottomBarItemPrimary
                                  .withOpacity(0.5)),
                          iconSize: 30,
                        ),
                        Expanded(
                          flex: 5,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            controller: _tabScrollController,
                            child: TabBar(
                              isScrollable: true,
                              controller: _tabController,
                              physics: const BouncingScrollPhysics(),
                              labelColor: Colors.black,
                              unselectedLabelColor: ColorConstants.textColor1,
                              indicatorColor: Colors.black,
                              tabs: tabs
                                  .map(
                                    (e) => FittedBox(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Tab(
                                          icon: SvgPicture.asset(
                                            e.assetIcon!,
                                            height: 20,
                                            width: 20,
                                            colorFilter: ColorFilter.mode(
                                                indexTab == e.index!
                                                    ? Colors.black
                                                    : ColorConstants.textColor1,
                                                BlendMode.srcIn),
                                          ),
                                          text: e.text!,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _scrollTab(false);
                          },
                          icon: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: ColorConstants.bottomBarItemPrimary
                                .withOpacity(0.5),
                          ),
                          iconSize: 30,
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5,
                                        color: ColorConstants.borderColor1),
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
                                  child: InkWell(
                                    onTap: () {
                                      showFilter();
                                    },
                                    child: SizedBox(
                                      width: 70,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            SvgPicture.asset(
                                              "assets/icons/filter.svg",
                                            ),
                                            const Text('Bộ lọc')
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: GridView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 400,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 9,
                                mainAxisExtent: 400,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: 40,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: itemRender(size),
                                );
                              }),
                        ),
                      ),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                      const Text('hi'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget itemRender(Size size) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 15.0,
                    dotPosition: DotPosition.bottomCenter,
                    autoplay: false,
                    overlayShadowColors: Colors.transparent,
                    animationDuration: const Duration(milliseconds: 1000),
                    images: [
                      Image.asset('assets/images/1.png', fit: BoxFit.cover),
                      Image.asset('assets/images/2.png', fit: BoxFit.cover),
                      Image.asset('assets/images/3.png', fit: BoxFit.cover),
                      Image.asset('assets/images/4.png', fit: BoxFit.cover),
                      Image.asset('assets/images/5.png', fit: BoxFit.cover),
                    ],
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 10,
                    child: IconButton(autopl
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hotel',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [Icon(Icons.star), Text('4.1')],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Cách 1 km',
              style: TextStyle(
                color: ColorConstants.textColor1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Ngày 20 - 23 , Tháng 2',
              style: TextStyle(
                color: ColorConstants.textColor1,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              '100.5 \$',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void showFilter() {
    showDialog(
      context: context,
      // transitionAnimationController: controller,
      // isScrollControlled: true,
      // backgroundColor: Colors.white,
      // shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) => StatefulBuilder(
          builder: (BuildContext context, StateSetter updateState) {
        return AlertDialog(
            actions: [
              Container(
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        width: 1, color: ColorConstants.borderColor1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      child: const Text('Xóa tất cả',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black87)),
                      onPressed: () {
                        updateState(() => deleteAll());

                        _scrollToTop();
                      },
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF76E11)),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            // do something
                            return const HomeScreen();
                          }));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Hiện 100 nhà'),
                        ))
                  ],
                ),
              ),
            ],
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 20),
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: ColorConstants.borderColor1,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        controller: _scrollController,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 170,
                              width: double.infinity,
                              child: Column(children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Ngày đi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'Thời gian: ${DateFormat.yMMMMd().format(_selectedDate)}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () =>
                                            _selectDate(context, updateState),
                                        icon: const Icon(
                                            Icons.calendar_month_outlined),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 70,
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'Bạn muốn ở lại trong bao lâu ?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          height: 50,
                                          width: double.infinity,
                                          margin:
                                              const EdgeInsets.only(left: 20.0),
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10, right: 15),
                                                child: InkWell(
                                                  radius: 10,
                                                  onTap: () => updateState(() {
                                                    indexTimeStay = index;
                                                  }),
                                                  child: Container(
                                                    height: 40,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        border: Border.all(
                                                            width: 1,
                                                            color: indexTimeStay ==
                                                                    timeStayList[
                                                                            index]
                                                                        .index
                                                                ? Colors.black
                                                                : ColorConstants
                                                                    .borderColor1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Center(
                                                        child: Text(
                                                            timeStayList[index]
                                                                .text!)),
                                                  ),
                                                ),
                                              );
                                            },
                                          )),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Ai sẽ đến',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: whoGoWidget(updateState),
                                )),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 280,
                              width: double.infinity,
                              child: Column(children: const [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Khoảng giá',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 250,
                                  width: double.infinity,
                                  child: ChartPriceRange(),
                                ),
                              ]),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Loại nơi ở',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 220,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: typePlace(updateState),
                                )),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Phòng và phòng ngủ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 270,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.0, top: 10),
                                    child: Text(
                                      'Bedroom',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  roomListView('bedroom', updateState),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.0, top: 10),
                                    child: Text(
                                      'Bed',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  roomListView('bed', updateState),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(left: 20.0, top: 10),
                                    child: Text(
                                      'Bathroom',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  roomListView('bathroom', updateState),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Loại nhà/phòng',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 280,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 100,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var house = typeHouseList
                                        .firstWhere((e) => e.index == index);
                                    return InkWell(
                                      onTap: () => updateState(() {
                                        typeHouseList.removeWhere(
                                            (e) => e.index == index);
                                        typeHouseList.insert(
                                            index,
                                            house.copyWith(
                                                isCheck: !house.isCheck!));
                                      }),
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: typeHouseList[index]
                                                      .isCheck!
                                                  ? Colors.black
                                                  : ColorConstants
                                                      .bottomBarItemSecondary,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: GridTile(
                                            header: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0, top: 20),
                                                child: SvgPicture.asset(
                                                  typeHouseList[index].svg!,
                                                  width: 40,
                                                  height: 40,
                                                  colorFilter: ColorFilter.mode(
                                                      typeHouseList[index]
                                                              .isCheck!
                                                          ? Colors.black
                                                          : ColorConstants
                                                              .bottomBarItemSecondary,
                                                      BlendMode.srcIn),
                                                ),
                                              ),
                                            ),
                                            child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0,
                                                          bottom: 10),
                                                  child: Text(
                                                    typeHouseList[index].text!,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: typeHouseList[
                                                                  index]
                                                              .isCheck!
                                                          ? Colors.black
                                                          : ColorConstants
                                                              .bottomBarItemSecondary,
                                                    ),
                                                  ),
                                                ))), //just for testing, will fill with image later
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                              color: ColorConstants.borderColor1,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                child: Text(
                                  'Tiện nghi',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: flagShowAmenities ? 650 : 300,
                              child: gridAmenity(updateState),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }

  Widget roomListView(String title, StateSetter updateState) {
    if (title == 'bedroom') {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 15),
                child: InkWell(
                  radius: 10,
                  onTap: () => updateState(() {
                    selectBedroomIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1,
                            color:
                                selectBedroomIndex == bedRoomList[index].index
                                    ? Colors.black
                                    : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bedRoomList[index].text!)),
                  ),
                ),
              );
            },
          ));
    } else if (title == 'bed') {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 15),
                child: InkWell(
                  radius: 10,
                  onTap: () => updateState(() {
                    selectBedIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1,
                            color: selectBedIndex == bedList[index].index
                                ? Colors.black
                                : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bedList[index].text!)),
                  ),
                ),
              );
            },
          ));
    } else {
      return Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 10, right: 15),
                child: InkWell(
                  radius: 10,
                  onTap: () => updateState(() {
                    selectBathroomIndex = index;
                  }),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1,
                            color:
                                selectBathroomIndex == bathRoomList[index].index
                                    ? Colors.black
                                    : ColorConstants.borderColor1),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text(bathRoomList[index].text!)),
                  ),
                ),
              );
            },
          ));
    }
  }

  Widget gridAmenity(StateSetter updateState) {
    final size = flagShowAmenities ? amenitiesList.length : 3;
    final amenitiesWidget = List.generate(
        size, (index) => amenitiesItem(amenitiesList[index], updateState))
      ..add(_seeNoSeeMore(updateState));
    return GridView.count(
      crossAxisCount: 1,
      childAspectRatio: 15,
      controller: ScrollController(keepScrollOffset: true),
      shrinkWrap: true,
      children: amenitiesWidget,
    );
  }

  Widget _seeNoSeeMore(StateSetter updateState) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 200,
        padding: const EdgeInsets.only(left: 20),
        child: TextButton(
            onPressed: () =>
                updateState(() => flagShowAmenities = !flagShowAmenities),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  flagShowAmenities ? 'Ẩn bớt' : 'Hiển thị thêm',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.black),
                ),
                flagShowAmenities
                    ? Icon(
                        Icons.arrow_drop_up,
                        color: ColorConstants.bottomBarItemSecondary,
                      )
                    : Icon(
                        Icons.arrow_drop_down,
                        color: ColorConstants.bottomBarItemSecondary,
                      )
              ],
            )),
      ),
    );
  }

  Widget amenitiesItem(Amenity amenity, StateSetter updateState) {
    final index = amenitiesList.indexWhere((e) => e == amenity);
    var amenity0 = amenity;
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ListTile(
            title: Text(
              amenity.text!,
            ),
            trailing: Checkbox(
              value: amenity.isCheck,
              checkColor: Colors.white,
              activeColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onChanged: (_) {
                updateState(() {
                  amenitiesList.remove(amenity);
                  amenitiesList.insert(
                      index, amenity0.copyWith(isCheck: !amenity0.isCheck!));
                });
              },
            )),
      ),
    );
  }

  Widget whoGoWidget(StateSetter updateState) {
    final whoWidget =
        List.generate(3, (index) => _whoList(whoList[index], updateState));
    return GridView.count(
      crossAxisCount: 1,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 15,
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

  Widget typePlace(StateSetter updateState) {
    final typeWidget = List.generate(
        3, (index) => _placesList(placesList[index], updateState));
    return GridView.count(
      crossAxisCount: 1,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 6),
      controller: ScrollController(keepScrollOffset: true),
      shrinkWrap: true,
      children: typeWidget,
    );
  }

  Widget _placesList(DataPlace placeList, StateSetter updateState) {
    var index = placesList.indexWhere(
      (element) => element == placeList,
    );
    return ListTile(
        title: Text(
          placeList.title!,
        ),
        subtitle: Text(
          placeList.subTitle!,
          style: TextStyle(color: ColorConstants.bottomBarItemSecondary),
        ),
        trailing: Checkbox(
          value: placeList.isCheck,
          checkColor: Colors.white,
          activeColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onChanged: (_) {
            updateState(() {
              placesList.remove(placeList);
              placesList.insert(
                  index, placeList.copyWith(isCheck: !placeList.isCheck!));
            });
          },
        ));
  }

  void deleteAll() {
    indexTimeStay = 1;
    indexTab = 0;
    selectBedroomIndex = 0;
    selectBedIndex = 0;
    selectBathroomIndex = 0;
    flagShowAmenities = false;
    typeHouseList = <DataHouse>[
      DataHouse(
          index: 0, text: 'Nhà', svg: 'assets/icons/house.svg', isCheck: false),
      DataHouse(
          index: 1,
          text: 'Căn hộ',
          svg: 'assets/icons/top_apartment.svg',
          isCheck: false),
      DataHouse(
          index: 2,
          text: 'Nhà khách',
          svg: 'assets/icons/guest_house.svg',
          isCheck: false),
      DataHouse(
          index: 3,
          text: 'Khách sạn',
          svg: 'assets/icons/hotel.svg',
          isCheck: false),
    ];
    amenitiesList = <Amenity>[
      Amenity(text: 'Wi-fi', isCheck: false),
      Amenity(text: 'Phòng bếp', isCheck: false),
      Amenity(text: 'Máy giặt', isCheck: false),
      Amenity(text: 'Máy sấy quần áo', isCheck: false),
      Amenity(text: 'Điều hòa', isCheck: false),
      Amenity(text: 'Hệ thống sưởi', isCheck: false),
      Amenity(text: 'Không gian làm việc', isCheck: false),
      Amenity(text: 'TV', isCheck: false),
      Amenity(text: 'Máy sấy tóc', isCheck: false),
      Amenity(text: 'Bàn là', isCheck: false),
    ];
    placesList = <DataPlace>[
      DataPlace(
          index: 0,
          title: 'Toàn bộ phòng',
          isCheck: false,
          subTitle: 'Toàn bộ nơi ở dành cho bạn'),
      DataPlace(
          index: 1,
          title: 'Phòng riêng',
          isCheck: false,
          subTitle:
              'Phòng riêng của bạn trong một ngôi nhà hoặc khách sạn, cùng với không gian sinh hoạt chung'),
      DataPlace(
          index: 2,
          title: 'Phòng chung',
          isCheck: false,
          subTitle: 'Không gian để ngủ và khu vực khác có thể sinh hoạt chung'),
    ];

    whoList = [
      WhoWillGo(
          index: 0,
          title: 'Người lớn',
          subTitle: 'Từ 13 tuổi trở lên',
          amount: 0),
      WhoWillGo(
          index: 1, title: 'Trẻ em', subTitle: 'Độ tuổi 2 - 12', amount: 0),
      WhoWillGo(index: 2, title: 'Em bé', subTitle: 'Dưới 2 tuổi', amount: 0),
    ];
  }
}

class Time {
  int? index;
  String? text;
  Time({
    this.index,
    this.text,
  });
}

class Tabs {
  int? index;
  String? text;
  String? assetIcon;
  Tabs({
    this.index,
    this.text,
    this.assetIcon,
  });
}

class DataPlace {
  int? index;
  String? title;
  String? subTitle;
  bool? isCheck = false;
  DataPlace({
    this.index,
    this.title,
    this.subTitle,
    this.isCheck,
  });

  DataPlace copyWith({
    int? index,
    String? title,
    String? subTitle,
    bool? isCheck,
  }) {
    return DataPlace(
      index: index ?? this.index,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isCheck: isCheck ?? this.isCheck,
    );
  }
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

class Amenity {
  String? text;
  bool? isCheck;
  Amenity({
    this.text,
    this.isCheck,
  });

  Amenity copyWith({
    String? text,
    bool? isCheck,
  }) {
    return Amenity(
      text: text ?? this.text,
      isCheck: isCheck ?? this.isCheck,
    );
  }
}
