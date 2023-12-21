import 'package:flutter/material.dart';

import 'package:mysql_client/mysql_client.dart';
import 'package:tablet_app_9/main.dart';


// mysql 접속 설정
Future<MySQLConnection> dbConnector() async {
  print("Connecting to mysql server...");

  final conn = await MySQLConnection.createConnection(
      host: 'database-1.c3h8wpy3mw6o.us-east-1.rds.amazonaws.com',
      port: 3306,
      userName: 'admin',
      password: 'a1234567',
      databaseName: 'mobileappDB');
  await conn.connect();
  print("Connected");

  return conn;
}



class SignComplete extends StatelessWidget {
  const SignComplete( {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x99E8C6FF),
        centerTitle: true,
        title: const Text("Leda Escape"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(500, 0, 0, 450),
                    child: Text(
                      "완료되었습니다.",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(1050, 50, 50, 0),
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () async {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                title: '',

                              )));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "홈으로",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
