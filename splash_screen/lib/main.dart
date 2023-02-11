import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//항상 최상단에 입력되는 위젯
      home: Scaffold( //항상 두 번째로 입력
        body: Container(
          //컨테이너 디자인 하는 클래스
          decoration: BoxDecoration(
            color: Color(0xFFF0000),
          ),
          child: Row(
            //가로방향도 가운데 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center, //주방향(세로)의 가운데 정렬
                children: [
                  //image, circular~ 둘 다 입력
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 500,
                  ),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Colors.red,
                    ),
                  ),
                ],
            ),
          ]
          ),
        ),
      ),
    );
  }
}

