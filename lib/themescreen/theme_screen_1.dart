//import 'dart:html';
// 첫번째 테마 페이지
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:tablet_app_9/singscreen/sign_screen_1.dart';

class ThemeScreen1 extends StatefulWidget {
  const ThemeScreen1({super.key});

  @override
  State<ThemeScreen1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ThemeScreen1> {
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    var mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Center(
            child: AppBar(
              backgroundColor: Color(skyblue),
              flexibleSpace: Center(
                child: Container(
                  child: Text('1번 테마',
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),textAlign: TextAlign.center,),
                ),
              ),
            ),
          )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: Stack(
                children: [
                  Container(
                   // color: Colors.black,
                  height: screenHeight * 0.75,
                  width: screenWidth * 0.9,
                  child: CarouselSlider(
                    carouselController: carouselController,
                    items: [1, 2, 3, 4, 5].map(
                          (i) {
                        if (i == 1) {
                          return Builder(builder: (BuildContext context) {
                            return Container(

                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                          padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                                          child: Center(
                                            child: Image.asset('images/a5.png'),

                                          )
                                        //height: 600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        }
                        if (i == 2) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                    child:Container(
                                      child: Center(
                                      child: Image.asset('images/b.png'),)
                            )
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        }
                        if (i == 3) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/c.png'),

                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        }
                        if (i == 4) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/d.png'),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        }
                        if (i == 5) {
                          return Builder(builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/e.png'),

                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        }

                        return Builder(
                          builder: (BuildContext context) {
                            return Container();
                          },
                        );
                      },
                    ).toList(),
                    options: CarouselOptions(
                      // 높이
                      //     aspectRatio: 16 / 9, // 사진 비율
                      viewportFraction: 1, // 좌우  여백
                      initialPage: 0, //처음 보여줄 페이지
                      enableInfiniteScroll: true, // 끝에 도달하면 반복
                      reverse: false, //반대 방향으로 스크롤
                      autoPlay: false, // 다음페이지 자동 실행
                      autoPlayCurve: Curves.fastOutSlowIn, // 화면 전환 애니메이션
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                      // 옆으로 스크롤
                    ),
                  ),
                  )
                ],
              )
          ),
          Container(
            width: 150,
            margin: EdgeInsets.only(top: 15, bottom: 15),
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child:InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignScreen_1(title: '1번테마'))
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Center(
                    child: Text("다음",
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
            ),
          )

        ],
      ),
    );
  }
}

/*
class ThemeScreen1 extends StatelessWidget{
  const ThemeScreen1({ Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xE8C6FF99),
        centerTitle: true,
        title: const Text("첫번째 테마"),

      ),

      body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  width: 1200,
                  height: 500,
                  color: Color(0x99E0FFFF),



                )
              ],
            )
          ],
        )
      )
    );
  }
}


 */