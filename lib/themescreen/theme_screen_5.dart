import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:tablet_app_9/singscreen/sign_screen_5.dart';

class ThemeScreen5 extends StatefulWidget {
  const ThemeScreen5({super.key});

  @override
  State<ThemeScreen5> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ThemeScreen5> {
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x99D2F3FF),
        centerTitle: true,
        title: const Text('5번 테마'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 650,
              width: 1400,
              child: Stack(
                children: [
                  CarouselSlider(
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
                                    Container(
                                      child: Image.asset('images/a.png'),
                                      margin: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      height: 600,
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/b.png'),
                                      margin: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      height: 600,
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/c.png'),
                                      margin: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      height: 600,
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/d.png'),
                                      margin: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      height: 600,
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
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('images/e.png'),
                                      margin: const EdgeInsets.fromLTRB(
                                          100, 0, 0, 0),
                                      height: 600,
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
                      aspectRatio: 16 / 9, // 사진 비율
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
                ],
              )),
          Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(850, 80, 0, 40),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black54, // 버튼 색상
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignScreen_5(

                              title: '5번테마',
                            )),
                      );
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
                      children: [
                        Text(
                          "다음",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              letterSpacing: 1.0, // 글자 사이 간격
                              fontWeight: FontWeight.bold),
                          //textAlign: TextAlign.center,
                        ),
                      ],
                    ))),
          )
        ],
      ),
    );
  }
}



