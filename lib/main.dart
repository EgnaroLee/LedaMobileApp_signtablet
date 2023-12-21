//import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
//import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
//import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mysql_client/mysql_client.dart';
import 'package:tablet_app_9/themescreen/theme_screen_1.dart';
import 'package:tablet_app_9/themescreen/theme_screen_2.dart';
import 'package:tablet_app_9/themescreen/theme_screen_3.dart';
import 'package:tablet_app_9/themescreen/theme_screen_4.dart';
import 'package:tablet_app_9/themescreen/theme_screen_5.dart';
import 'package:tablet_app_9/themescreen/theme_screen_6.dart';
import 'package:tablet_app_9/themescreen/theme_screen_7.dart';
import 'package:tablet_app_9/themescreen/theme_screen_8.dart';


Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  dbConnector();
}

Future<void> dbConnector() async {
  print("Connecting to mysql server...");
  final conn = await MySQLConnection.createConnection(
      host: 'database-1.c3h8wpy3mw6o.us-east-1.rds.amazonaws.com',
      port: 3306,
      userName: 'admin',
      password: 'a1234567',
      databaseName: 'mobileappDB');

  await conn.connect();

  print("Connected");

  await conn.close();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'leda Escape'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void theme1() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0x9987CEFA),
        elevation: 0,
        title: const Text("Leda Escape"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [ListTile()],
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  width: 800,
                  height: 400,
                  color: const Color(0x99FAFAD2),
                  child: const Text(
                    "레다게임즈",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                //1번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen1()),
                          );
                        },
                        child: Image.asset("images/a.png"),
                      ),
                    )),

                //2번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen2()),
                          );
                        },
                        child: Image.asset("images/b.png"),
                      ),
                    )),

                //3번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen3()),
                          );
                        },
                        child: Image.asset("images/c.png"),
                      ),
                    )),
                //4번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen4()),
                          );
                        },
                        child: Image.asset("images/a.png"),
                      ),
                    )),
              ],
            ),
            //2번째 라인
            Row(
              children: [
                //5번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen5()),
                          );
                        },
                        child: Image.asset("images/b.png"),
                      ),
                    )),

                // 6번째 페이지
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen6()),
                          );
                        },
                        child: Image.asset("images/c.png"),
                      ),
                    )),
//7번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen7()),
                          );
                        },
                        child: Image.asset("images/a.png"),
                      ),
                    )),

                // 8번 테마
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 215,
                      width: 150,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThemeScreen8()),
                          );
                        },
                        child: Image.asset("images/c.png"),
                      ),
                    )),
              ],
            ),
/*
            //3번째 줄
            Row(
              children: [

                //9번 테마
                Expanded(child: Container(
                  padding: EdgeInsets.all(10),
                  height: 140,
                  width: 150,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>ThemeScreen9()), );

                    },
                    child: Image.asset("assets/images/logo.png"),
                  ),
                )),


              ],
            )
        */
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
/*
class XXXXX extends StatefulWidget {
  @override
  _XXXXXState createState() => _XXXXXState();
}

class _XXXXXState extends State<XXXXX> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    final auth = AmplifyAuthCognito();
    final analytics = AmplifyAnalyticsPinpoint();

    try {
      Amplify.addPlugins([auth, analytics]);
      await Amplify.configure(amplifyconfig);
      var configured = true;
    } catch (e) {
      print(e);
    }


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

 */