import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tablet_app_9/singscreen/sign_complete_screen.dart';

class SignScreen_5 extends StatefulWidget {
  const SignScreen_5({super.key, required this.title});

  final String title;

  @override
  State<SignScreen_5> createState() => _SignScreenState();
}



class _SignScreenState extends State<SignScreen_5> {
  TextEditingController _username1 = TextEditingController(text: '');
  TextEditingController _username2 = TextEditingController(text: '');
  TextEditingController _username3 = TextEditingController(text: '');
  TextEditingController _username4 = TextEditingController(text: '');
  TextEditingController _username5 = TextEditingController(text: '');
  TextEditingController _userpnum1 = TextEditingController(text: '');
  TextEditingController _userpnum2 = TextEditingController(text: '');
  TextEditingController _userpnum3 = TextEditingController(text: '');
  TextEditingController _userpnum4 = TextEditingController(text: '');
  TextEditingController _userpnum5 = TextEditingController(text: '');


  bool _isCheckYes_1 = false;
  bool _isCheckYes_2 = false;
  bool _isCheckYes_3 = false;
  bool _isCheckYes_4 = false;
  bool _isCheckYes_5 = false;

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
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(
                            children: [
                              Checkbox(value: _isCheckYes_1,
                                onChanged: (value){
                                  setState(() {
                                    _isCheckYes_1 = value!;
                                  });
                                },
                              ),
                              Text("동의합니다",
                                style: TextStyle(
                                    fontSize: 23
                                ),)
                            ],
                          )
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
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(
                            children: [
                              Checkbox(value: _isCheckYes_2,
                                onChanged: (value){
                                  setState(() {
                                    _isCheckYes_2 = value!;
                                  });
                                },
                              ),
                              Text("동의합니다",
                                style: TextStyle(
                                    fontSize: 23
                                ),)
                            ],
                          )
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
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(
                            children: [
                              Checkbox(value: _isCheckYes_3,
                                onChanged: (value){
                                  setState(() {
                                    _isCheckYes_3 = value!;
                                  });
                                },
                              ),
                              Text("동의합니다",
                                style: TextStyle(
                                    fontSize: 23
                                ),)
                            ],
                          )
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
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(
                            children: [
                              Checkbox(value: _isCheckYes_4,
                                onChanged: (value){
                                  setState(() {
                                    _isCheckYes_4 = value!;
                                  });
                                },
                              ),
                              Text("동의합니다",
                                style: TextStyle(
                                    fontSize: 23
                                ),)
                            ],
                          )
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
                          margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
                          child: Row(
                            children: [
                              Checkbox(value: _isCheckYes_5,
                                onChanged: (value){
                                  setState(() {
                                    _isCheckYes_5 = value!;

                                  });
                                },
                              ),
                              Text("동의합니다",
                                style: TextStyle(
                                    fontSize: 23
                                ),)
                            ],
                          )
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

                            if(_username1.text == '' && _userpnum1.text != ''){
                              showDialog(context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text(''),
                                    content: Text('이름을 입력해주세요!',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: const Text('확인'),
                                      )
                                    ],
                                  ));
                            }

                            else if( _userpnum1.text == '' && _username1.text != ''){
                              showDialog(context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text(''),
                                    content: Text('전화번호를 입력해주세요!',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: const Text('확인'),
                                      )
                                    ],
                                  ));
                            }


                            if (_username1.text != '' || _username2.text != '' || _username3.text != '' || _username4.text != '' || _username5.text != '') {
                              if((_username1.text != '' && _userpnum1.text != '') && _isCheckYes_1 == false){

                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              if((_username2.text != '' && _userpnum2.text != '') && _isCheckYes_2 == false){

                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignComplete()),
                              );

                              final conn = await dbConnector();
                              if(_username1.text != '' && _userpnum1.text != '' && _isCheckYes_1 == true){
                                try {
                                  var res = await conn.execute(
                                    "INSERT INTO userinfo_1 (theme, name, pnum, agreement) VALUES (:theme, :name1, :pnum1, :agree1)",
                                    {
                                      "theme": "5번 테마",
                                      "name1": _username1.text,
                                      "pnum1": _userpnum1.text,
                                      "agree1": _isCheckYes_1.toString()
                                    },
                                  );
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }


                              if (_username2.text != '' && _userpnum2.text != '' && _isCheckYes_2 == true) {

                                try {
                                  var res = await conn.execute(
                                    "INSERT INTO userinfo_1 (theme, name, pnum, agreement) VALUES (:theme, :name2, :pnum2, :agree2)",
                                    {
                                      "theme": "5번 테마",
                                      "name2": _username2.text,
                                      "pnum2": _userpnum2.text,
                                      "agree2": _isCheckYes_2.toString()
                                    },
                                  );
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }
                              if (_username3.text != '' && _userpnum3.text != '' && _isCheckYes_3 == true) {
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name3, :pnum3, :agree3)",
                                      {
                                        "theme": "5번 테마",
                                        "name3": _username3.text,
                                        "pnum3": _userpnum3.text,
                                        "agree3": _isCheckYes_3.toString()
                                      });
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }
                              if (_username4.text != '' && _userpnum4.text != '' && _isCheckYes_4 == true) {
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name4, :pnum4, :agree4)",
                                      {
                                        "theme": "5번 테마",
                                        "name4": _username4.text,
                                        "pnum4": _userpnum4.text,
                                        "agree4": _isCheckYes_4.toString()
                                      });
                                } catch (e) {
                                  print('Error :$e');
                                }
                              }


                              if(_username5.text != '' && _userpnum5.text != '' && _isCheckYes_5 == true){
                                try {
                                  var res = await conn.execute(
                                      "INSERT INTO userinfo_1 (theme, name, pnum, agreement) values (:theme, :name5, :pnum5, :agree5)",
                                      {
                                        "theme": "5번 테마",
                                        "name5": _username5.text,
                                        "pnum5": _userpnum5.text,
                                        "agree5": _isCheckYes_5.toString()
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
