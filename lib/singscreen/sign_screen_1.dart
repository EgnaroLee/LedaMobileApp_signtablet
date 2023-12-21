import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tablet_app_9/singscreen/sign_complete_screen.dart';

final skyblue = 0x99add8e6;
final blue1 = 0x99ADD8E6;

class SignScreen_1 extends StatefulWidget {
  const SignScreen_1({super.key, required this.title});

  final String title;

  @override
  State<SignScreen_1> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen_1> {
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
          preferredSize: Size.fromHeight(120),
          child: Center(
            child: AppBar(
              backgroundColor: Color(skyblue),
              flexibleSpace: Center(
                child: Container(
                  child: Text('서약서',
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
        body: SingleChildScrollView(
          // 키보드 올라온 경우 스크롤 가능
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                 Center(
                   child:  Container(
                     margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                     width: 1240,
                     height: 200,
                     color: Color(skyblue),
                     child: Text(
                       "서약서 내용",
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.black,
                       ),
                     ),
                   ),
                 )
                ],
              ),
              Row(
                children: [
                 Center(
                   child: Row(
                     children: [
                     Container(
                       width: 1240,
                       height: 140,
                       color: Color(skyblue),
                       margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                       
                       child: Row(
                         children: [
                           Expanded(
                               child: Container(
                                 padding: const EdgeInsets.only(left: 70, right: 150, bottom: 30),

                               child: Container(

                                 height: 70,
                                 color: Color(blue1),
                                 child: Center(
                                   child: Text(
                                     "이름",
                                     style: TextStyle(
                                       fontSize: 27,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.black,
                                     ),
                                     textAlign: TextAlign.center,
                                   ),
                                 ),
                               ),
                               )),
                           Expanded(
                               child: Container(
                                 padding: const EdgeInsets.only(left: 70, right: 150, bottom: 30),
                                 child: Container(
                                   height: 70,
                                   color: Color(blue1),
                                  child: Center(
                                    child: Text(
                                      "연락처",
                                      style: TextStyle(
                                        fontSize: 27,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                 ),
                           )),
                           Expanded(
                               child: Container(
                                 padding: const EdgeInsets.only(left: 70, right: 150, bottom: 30),
                                 child: Container(
                                   height: 70,
                                   color: Color(blue1),
                                   child: Center(
                                     child: Text(
                                       "동의",
                                       style: TextStyle(
                                         fontSize: 27,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.black,
                                       ),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),
                                 ),
                               ))
                         ],
                       ),
                     )
                     ],
                   ),
                 )
                ],
              ),
              Column(
                children: [
                  Center(
                    // 입력 1번째줄
                  child: Column(
                    children: [
                      Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              width: 1240,
                              height: 90,
                             color: Color(skyblue),
                             child: Row(
                               children: [
                                 Expanded(
                                   child: Container(
                                     padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                     )
                                   ),
                                 ),
                                 Expanded(
                                     child: Container(
                                       padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                 )),
                                 Expanded(
                                   child: Container(
                                     padding: const EdgeInsets.only(left: 80, right: 70, bottom: 60),
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
                                     ),
                                   
                                 ),
                                 )

                               ],
                             )
                          ),


                    ],
                  ),

                  ),

                  // 2번째 줄
                  Center(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            width: 1240,
                            height: 90,
                            color: Color(skyblue),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                    )),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 80, right: 70, bottom: 60),
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
                                    ),

                                  ),
                                )

                              ],
                            )
                        ),


                      ],
                    ),
                  ),

                  //3번째 줄
                  Center(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            width: 1240,
                            height: 90,
                            color: Color(skyblue),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                    )),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 80, right: 70, bottom: 60),
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
                                    ),

                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    ),
                  ),

                  // 4번째 줄
                  Center(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            width: 1240,
                            height: 90,
                            color: Color(skyblue),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                    )),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 80, right: 70, bottom: 60),
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
                                    ),

                                  ),
                                )

                              ],
                            )
                        ),


                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            width: 1240,
                            height: 90,
                            color: Color(skyblue),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
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
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 50, right: 70, bottom: 60),
                                      child: TextField(
                                        controller: _userpnum5,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly, //숫자만 입력
                                          LengthLimitingTextInputFormatter(11),
                                        ],
                                        decoration: InputDecoration(
                                          hintText: '연락처',
                                        ),
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    )),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 80, right: 70, bottom: 60),
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
                                    ),

                                  ),
                                )

                              ],
                            )
                        ),


                      ],
                    ),
                  )

                ],
              ),



              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(1050, 30, 50, 30),
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () async {

                            // 1~5번째 줄 이름 칸 중에서 하나라도 입력된 칸이 있는 경우
                            if (_username1.text != '' || _username2.text != '' || _username3.text != '' || _username4.text != '' || _username5.text != '') {

                              // 1번째 줄
                              // 이름 공백
                              if(_username1.text == '' && _userpnum1.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('1번째 줄 이름을 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 전화번호 공백
                              else if( _userpnum1.text == '' && _username1.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('1번째 줄 전화번호를 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 동의 버튼 체크
                              else if(_userpnum1.text != '' && _userpnum1.text != '' && _isCheckYes_1 == false){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('1번째 줄 동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'))
                                      ],
                                    ));
                              }

                              // 2번째 줄
                              // 이름 공백
                               else if(_username2.text == '' && _userpnum2.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('2번째 줄 이름을 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                               // 전화번호 공백
                              else if( _userpnum2.text == '' && _username2.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('2번째 줄 전화번호를 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 동의 버튼 체크
                              else if(_userpnum2.text != '' && _userpnum2.text != '' && _isCheckYes_2 == false){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('2번째 줄 동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'))
                                      ],
                                    ));
                              }

                              // 3번째 줄
                              // 이름 공백
                              else if(_username3.text == '' && _userpnum3.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('3번째 줄 이름을 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 전화번호 공백
                              else if( _userpnum3.text == '' && _username3.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('3번째 줄 전화번호를 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 동의 버튼 체크
                              else if(_userpnum3.text != '' && _userpnum3.text != '' && _isCheckYes_3 == false){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('3번째 줄 동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'))
                                      ],
                                    ));
                              }



                              // 4번째 줄
                              // 이름이 공백일 경우
                              else if(_username4.text == '' && _userpnum4.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('4번째 줄 이름을 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 전화번호 공백일 경우
                              else if( _userpnum4.text == '' && _username4.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('4번째 줄 전화번호를 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 동의 버튼 체크 안한 경우
                              else if(_userpnum4.text != '' && _userpnum4.text != '' && _isCheckYes_4 == false){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('4번째 줄 동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'))
                                      ],
                                    ));
                              }

                              // 5번째 줄
                              // 이름이 공백일 경우
                              else if(_username5.text == '' && _userpnum5.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('5번째 줄 이름을 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 전화번호 공백일 경우
                              else if( _userpnum5.text == '' && _username5.text != ''){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('5번째 줄 전화번호를 입력해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'),
                                        )
                                      ],
                                    ));
                              }

                              // 동의 버튼 체크 안한 경우
                              else if(_userpnum5.text != '' && _userpnum5.text != '' && _isCheckYes_5 == false){
                                showDialog(context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(''),
                                      content: Text('5번째 줄 동의 버튼을 체크해주세요!',
                                        style: TextStyle(
                                          fontSize: 25,
                                        ),
                                          textAlign: TextAlign.center
                                      ),
                                      actions: [
                                        TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Text('확인'))
                                      ],
                                    ));
                              }


                             else{
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
                                        "theme": "1번 테마",
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
                                        "theme": "1번 테마",
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
                                          "theme": "1번 테마",
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
                                          "theme": "1번 테마",
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
                                          "theme": "1번 테마",
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
                            }
                            else{
                              showDialog(context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text(''),
                                    content: Text('정보를 입력해주세요!',
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),textAlign: TextAlign.center,
                                    ),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: const Text('확인'),
                                      )
                                    ],
                                  ));
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
