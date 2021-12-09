import 'package:flutter/material.dart';

// 메인함수가 실행할때 아무 값도 반환하지 않는다
void main() => runApp(MyApp()); // runApp 이 호출될때마다 가지는 값 - runApp 함수의 ()에는 위젯이 들어간다
// 클래스 명은 앞글자가 대문자, 함수는 소문자
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text('First App'),
            ],
          )       
        )

      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello1'),
            Text('Hello2'),
            Text('Hello3'),
          ],
        ),
      ),
    );
  }
}

// Scaffold => 무언가를 혼자 해낼 수 있도록 발판을 주다. 웹화면의 빈 도화지 느낌