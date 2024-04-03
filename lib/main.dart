import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'birthday'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 화면에 흩뿌려주다.

      body: Stack( fit: StackFit.expand,
        children: [
        // 배경 이미지
        Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB_QxA8zKdJRDVphThDDTxhqMHA1UqqKkuODZlDSDlow&s', // 이미지 경로를 자신의 이미지 경로에 맞게 수정하세요.
        fit: BoxFit.cover,
      ),

         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // Column 위아래로 배치
                children: [
                  Text(
                    'Happy',
                    style: TextStyle(fontSize: 90),
                  ),
                  Text(
                    'Birthday',
                    style: TextStyle(fontSize: 90),
                  ),

                  Text(
                    'Sam!',
                    style: TextStyle(fontSize: 90),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 60.0), // 우측 여백 설정
                    child: Text(
                      'From Emma',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],)
            ],
          ),
        ),
     ] ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
