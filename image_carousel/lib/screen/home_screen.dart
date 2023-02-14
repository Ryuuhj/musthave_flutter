import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//1. StatefulWidget 정의
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //initState() 아님, 그냥 State 클래스 생성
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



//2. _HomeScreenState 정의
class _HomeScreenState extends State<HomeScreen> {
  // initState() 함수 등록
  @override
  void initState() {
    //부모 initState() 실행
    super.initState();

    //타이머 추가
    Timer.periodic(
      Duration(seconds: 3),
          (timer) {
        print('실행!');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //상태바 색상 변경
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      //실행 결과로 위젯 반환
      body: PageView(
        children: [1, 2, 3, 4, 5] //샘플 리스트 생성
            .map(
              //리스트 별 각 위젯으로 매핑
              (number) => Image.asset(
                'asset/img/image_$number.jpeg',
                fit: BoxFit.cover,
              ), //매핑할 이미지 경로
            )
            .toList(),
      ),
    );
  }
}
