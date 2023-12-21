import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tablet_app_9/singscreen/sign_complete_screen.dart';

class SignScreen_3 extends StatefulWidget {
  const SignScreen_3({super.key, required this.title});

  final String title;

  @override
  State<SignScreen_3> createState() => _SignScreenState();
}

enum Agree { yes, no }

class _SignScreenState extends State<SignScreen_3> {
  TextEditingController _username1 = TextEditingController();
  TextEditingController _username2 = TextEditingController();
  TextEditingController _username3 = TextEditingController();
  TextEditingController _username4 = TextEditingController();
  TextEditingController _username5 = TextEditingController();
  TextEditingController _userpnum1 = TextEditingController();
  TextEditingController _userpnum2 = TextEditingController();
  TextEditingController _userpnum3 = TextEditingController();
  TextEditingController _userpnum4 = TextEditingController();
  TextEditingController _userpnum5 = TextEditingController();

  Agree? agree_1 = Agree.no;
  Agree? agree_2 = Agree.no;
  Agree? agree_3 = Agree.no;
  Agree? agree_4 = Agree.no;
  Agree? agree_5 = Agree.no;


  @override
  void dispose() {
    _username1.dispose();
    _username2.dispose();
    _username3.dispose();
    _username4.dispose();
    _username5.dispose();
    _userpnum1.dispose();
    _userpnum2.dispose();
    _userpnum3.dispose();
    _userpnum4.dispose();
    _userpnum5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            backgroundColor: Color(0x99E8C6FF),
            centerTitle: true,
            title: const Text(
              "서약서",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          // 키보드 올라온 경우 스크롤 가능
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 50, 0, 0),
                    width: 1230,
                    height: 200,
                    color: Color(0x99FAFAD2),
                    child: Text(
                      "서약서 내용",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
                    width: 100,
                    height: 25,
                    child: Text(
                      "이름",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(310, 30, 0, 0),
                    width: 100,
                    height: 25,
                    child: Text(
                      "연락처",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(310, 30, 0, 0),
                    width: 100,
                    height: 25,
                    child: Text(
                      "동의",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                // 입력 1번째줄
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      width: 250,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _username1,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'))
                            ],
                            decoration: InputDecoration(
                              hintText: '이름',
                            ),
                            style: TextStyle(fontSize: 20),
                            onChanged: (text) {
                              setState(() {});
                            },
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(150, 10, 0, 0),
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _userpnum1,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              hintText: '연락처',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의'),
                          leading: Radio<Agree>(
                            value: Agree.yes,
                            groupValue: agree_1,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_1 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의 안함'),
                          leading: Radio<Agree>(
                            value: Agree.no,
                            groupValue: agree_1,
                            onChanged: (Agree? groupValue) {
                              setState(() {
                                agree_1 = groupValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // 입력 2번째 줄
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      width: 250,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _username2,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'))
                            ],
                            decoration: InputDecoration(
                              hintText: '이름',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _userpnum2,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              hintText: '연락처',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의'),
                          leading: Radio<Agree>(
                            value: Agree.yes,
                            groupValue: agree_2,
                            onChanged: (Agree? groupValue) {
                              setState(() {
                                agree_2 = groupValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의 안함'),
                          leading: Radio<Agree>(
                            value: Agree.no,
                            groupValue: agree_2,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_2 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // 입력 3번째 줄
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      width: 250,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _username3,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'))
                            ],
                            decoration: InputDecoration(
                              hintText: '이름',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _userpnum3,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              hintText: '연락처',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의'),
                          leading: Radio<Agree>(
                            value: Agree.yes,
                            groupValue: agree_3,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_3 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의 안함'),
                          leading: Radio<Agree>(
                            value: Agree.no,
                            groupValue: agree_3,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_3 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //입력 4번째 줄
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      width: 250,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _username4,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'))
                            ],
                            decoration: InputDecoration(
                              hintText: '이름',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _userpnum4,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              hintText: '연락처',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의'),
                          leading: Radio<Agree>(
                            value: Agree.yes,
                            groupValue: agree_4,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_4 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의 안함'),
                          leading: Radio<Agree>(
                            value: Agree.no,
                            groupValue: agree_4,
                            onChanged: (Agree? value) {
                              setState(() {
                                agree_4 = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // 입력 5번째 줄
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      width: 250,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _username5,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(
                                  r'[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ]'))
                            ],
                            decoration: InputDecoration(
                              hintText: '이름',
                            ),
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(150, 0, 0, 0),
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: TextField(
                            controller: _userpnum5,
                            style: TextStyle(fontSize: 20),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                              LengthLimitingTextInputFormatter(11),
                            ],
                            decoration: InputDecoration(
                              hintText: '연락처',
                            ),
                          ),
                        ),
                      )),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의'),
                          leading: Radio<Agree>(
                            value: Agree.yes,
                            groupValue: agree_5,
                            onChanged: (Agree? groupValue) {
                              setState(() {
                                agree_5 = groupValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ListTile(
                          title: const Text('동의 안함'),
                          leading: Radio<Agree>(
                            value: Agree.no,
                            groupValue: agree_5,
                            onChanged: (Agree? groupValue) {
                              setState(() {
                                agree_5 = groupValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(1050, 50, 50, 0),
                        height: 70,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () async {

                            if (_username1.text != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignComplete()),
                              );

                              final conn = await dbConnector();
                              try {
                                var res = await conn.execute(
                                  "INSERT INTO userinfo_1 (theme, name, pnum, agreement) VALUES (:theme, :name1, :pnum1, :agree1)",
                                  {
                                    "theme": "3번 테마",
                                    "name1": _username1.text,
                                    "pnum1": _userpnum1.text,
                                    "agree1": agree_1.toString()
                                  },
                                );
                              } catch (e) {
                                print('Error :$e');
                              }

                              if (_username2.text != null) {
                                try {
                                  var res = await conn.execute(
                                    "INSERT INTO userinfo_1 (theme, name, pnum, agreement) VALUES (:theme, :name2, :pnum2, :agree2)",
                                    {
                                      "theme": "3번 테마",
                                      "name2": _username2.text,
                                      "pnum2": _userpnum2.text,
                                      "agree2": agree_2.toString()
                                    },
                                  );
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }
                              if (_username3.text != null) {
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name3, :pnum3, :agree3)",
                                      {
                                        "theme": "3번 테마",
                                        "name3": _username3.text,
                                        "pnum3": _userpnum3.text,
                                        "agree3": agree_3.toString()
                                      });
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }
                              if (_username4.text != null) {
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name4, :pnum4, :agree4)",
                                      {
                                        "theme": "3번 테마",
                                        "name4": _username4.text,
                                        "pnum4": _userpnum4.text,
                                        "agree4": agree_4.toString()
                                      });
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }
                              if (_username5.text != null) {
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name5, :pnum5, :agree5)",
                                      {
                                        "theme": "3번 테마",
                                        "name5": _username5.text,
                                        "pnum5": _userpnum5.text,
                                        "agree5": agree_5.toString()
                                      });
                                } catch (e) {
                                  print('Error :$e');
                                } finally {
                                  await conn.close();
                                }
                              }
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "다음",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
