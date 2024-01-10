import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orzugrandshop/core/constants/bottom_item.dart';
import 'package:orzugrandshop/core/constants/recom_list.dart';
import 'package:orzugrandshop/screens/basket/basket_page.dart';
import 'package:orzugrandshop/screens/catalog/catalog_page.dart';
import 'package:orzugrandshop/screens/favourite/favourite_page.dart';
import 'package:orzugrandshop/screens/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey _globalKey = GlobalKey();
  TextEditingController _searchController = TextEditingController();
  late int tappedIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          homePage(),
          const CatalogPage(),
          const BasketPage(),
          const FavouritePage(),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: tappedIndex,
        onTap: (index) {
          setState(() {});
          tappedIndex = index;
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  Widget homePage() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        leading: Image.asset("assets/app/location.png"),
        title: Text(
          'ORZUGRAND',
          style: TextStyle(
            color: Color(0xFFFF7010),
            fontSize: 60.sp,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Image.asset("assets/app/messages.png"),
          SizedBox(
            width: 36.0.w,
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.only(left: 46.0.w),
                  child: Row(
                    children: [
                      Image.asset("assets/app/userPro.png"),
                      SizedBox(
                        width: 18.0.w,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Здравствуйте, ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 46.sp,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: 'Дониёр',
                              style: TextStyle(
                                color: Color(0xFF14A23C),
                                fontSize: 46.sp,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(color: Color(0xFFF0F0F0), height: 30.0.h),
              Material(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 450.h,
                    child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 40.0.w),
                          child: Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                            ),
                            width: 800.w,
                            height: 450.h,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 30.0.h,
                                    left: 36.0.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Готов к выдаче',
                                        style: TextStyle(
                                          color: const Color(0xFFFF7010),
                                          fontSize: 46.sp,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 14.0.h),
                                      Text(
                                        'Заказ №10021122',
                                        style: TextStyle(
                                          color: Color(0xFF7B7B7B),
                                          fontSize: 36.sp,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 15.0.h),
                                      Text(
                                        'Самовывоз до 29 марта',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 40.sp,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 20.0.h),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(90.w, 90.h),
                                            backgroundColor: Color(0xFFFF7010),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.r))),
                                        child: Text(
                                          'Забрать заказ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 36.sp,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 36.0.h, right: 28.0.w),
                                        child:
                                            Image.asset("assets/app/tick.png"),
                                      ),
                                      SizedBox(
                                        height: 20.0.h,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20.0.w,
                                          ),
                                          Image.asset("assets/app/box.png"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(color: Color(0xFFF0F0F0), height: 40.0.h),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 100.0.h,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(20.0.h),
              //       topRight: Radius.circular(20.0.h),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    top: 50.0.h, bottom: 40.0.h, left: 50.0.w, right: 50.0.w),
                child: Form(
                  key: _globalKey,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30.0.r),
                    ),
                    height: 120.0.h,
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle: TextStyle(
                          color: const Color(0xFF7B7B7B),
                          fontSize: 40.sp,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                        hintText: "Поиск товаров",
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.0),
                          borderRadius: BorderRadius.circular(30.0.r),
                        ),
                        prefixIcon: Image.asset("assets/app/search-normal.png"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 450.0.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 40.0.w, right: 10.0.w),
                      child: Image.asset(
                        "assets/app/app_ads.png",
                        fit: BoxFit.fill,
                        height: 450.0.h,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 30.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    backgroundColor: Color(0xFFFF7010),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width, 110.0.h),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Все акции',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Товар дня',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '22 : 33 : 15',
                      style: TextStyle(
                        color: Color(0xFF7B7B7B),
                        fontSize: 45.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 40.0.w, right: 60.0.w, top: 30.0.h, bottom: 10.0.h),
                child: Material(
                  borderRadius: BorderRadius.circular(20.0.r),
                  shadowColor: Colors.grey[200],
                  elevation: 2.0,
                  child: Container(
                    // alignment: Alignment.topLeft,
                    height: 900.0.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.0.h),
                        Container(
                          width: 200.0.w,
                          height: 85.0.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/app/vector.png",
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              'Хит',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.sp,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Center(child: Image.asset("assets/app/gorenje.png")),
                        SizedBox(height: 20.0.h),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 40.0.w, right: 100.0.w),
                          child: Text(
                            'Микроволновая печь соло Gorenje MO17E1W',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 42.sp,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 40.0.h,
                            left: 40.0.w,
                            right: 40.0.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2 000 000 сум',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 34.sp,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    '1 750 000 сум',
                                    style: TextStyle(
                                      color: Color(0xFFFF7010),
                                      fontSize: 46.sp,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0.r),
                                  ),
                                  backgroundColor: Color(0xFFFF7010),
                                  minimumSize: Size(50.0.w, 84.0.h),
                                ),
                                onPressed: () {},
                                child: Image.asset(
                                  "assets/app/buy.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/app/g_slider.png"),
                    Image.asset("assets/app/i_slider.png"),
                    Image.asset("assets/app/m_slider.png"),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 40.0.h, left: 40.0.w, bottom: 40.0.w),
                child: Text(
                  'Рекомендуем вам',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 30.0.h, left: 40.0.w, bottom: 40.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Новинки',
                      style: TextStyle(
                        color: Color(0xFF7B7B7B),
                        fontSize: 46.0.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Популярное',
                      style: TextStyle(
                        decorationColor: Color(0xFFFF7010),
                        decoration: TextDecoration.underline,
                        color: Color(0xFFFF7010),
                        fontSize: 46.0.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Скидки + Рассрочка',
                      style: TextStyle(
                        color: Color(0xFF7B7B7B),
                        fontSize: 46.0.sp,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 40.0.w),
                child: Container(
                  height: 430.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Material(
                            elevation: 2.0,
                            shadowColor: Colors.grey,
                            borderRadius: BorderRadius.circular(20.0.r),
                            child: Container(
                              height: 350.0,
                              width: 880.0.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 20.0.h,
                                    ),
                                    height: 350.0.h,
                                    width: 400.0,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 30.0.w),
                                        Image.asset(
                                          "assets/app/p_list.png",
                                          fit: BoxFit.fill,
                                        ),
                                        SizedBox(width: 50.0.w),
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: 500.0.w,
                                              child: Text(
                                                "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 35.sp,
                                                  fontFamily: 'Open Sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '1 750 000 сум',
                                                  style: TextStyle(
                                                    color: Color(0xFFFF7010),
                                                    fontSize: 30.sp,
                                                    fontFamily: 'Open Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(width: 40.0.w),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0.r),
                                                    ),
                                                    backgroundColor:
                                                        Color(0xFFFF7010),
                                                    minimumSize:
                                                        Size(40.0.w, 84.0.h),
                                                  ),
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                    "assets/app/buy.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.only(
                                              top: 20.0.h, right: 15.0.w),
                                          height: 330.0.h,
                                          width: 400.0,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 30.0.w),
                                              Image.asset(
                                                recoImage[index],
                                                fit: BoxFit.fill,
                                              ),
                                              SizedBox(width: 50.0.w),
                                              Column(
                                                children: [
                                                  SizedBox(
                                                    width: 500.0.w,
                                                    child: Text(
                                                      recomName[index],
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 35.sp,
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '1 750 000 сум',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFFF7010),
                                                          fontSize: 30.sp,
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      SizedBox(width: 40.0.w),
                                                      ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0.r),
                                                          ),
                                                          backgroundColor:
                                                              Color(0xFFFF7010),
                                                          minimumSize: Size(
                                                              40.0.w, 84.0.h),
                                                        ),
                                                        onPressed: () {},
                                                        child: Image.asset(
                                                          "assets/app/buy.png",
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(890.0.w, 90.0.h),
                                backgroundColor: Color(0xFFFF7010),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0.r),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Смотреть все 15',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.sp,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },

                    //
                  ),
                ),
              ),
              SizedBox(height: 10.0.h),

              Padding(
                padding: EdgeInsets.only(left: 40.0.w),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ORZU',
                        style: TextStyle(
                          color: Color(0xFF14A23C),
                          fontSize: 50.sp,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'BLOG',
                        style: TextStyle(
                          color: Color(0xFFFF7010),
                          fontSize: 50.sp,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0.h),

              SizedBox(
                height: 500.0.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 500.0.h,
                      width: 860.0.w,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(left: 40.0.w, right: 10.0.w),
                            child: Image.asset("assets/app/ads.png"),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0.h),

              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 30.0.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    backgroundColor: Color(0xFFFF7010),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width, 110.0.h),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Читать все',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40.0.h),

              Padding(
                padding: EdgeInsets.only(
                    left: 70.0.w, right: 30.0.w, top: 20.0.h, bottom: 30.0.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'У нас всё!',
                          style: TextStyle(
                            color: Color(0xFF14A23C),
                            fontSize: 44.sp,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Хватит листать, \nпереходи в каталог.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 44.sp,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(490.0.w, 80.0.h),
                              backgroundColor: const Color(0xFFFF7010),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Каталог',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.sp,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0.w),
                    Image.asset("assets/app/last_p.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
