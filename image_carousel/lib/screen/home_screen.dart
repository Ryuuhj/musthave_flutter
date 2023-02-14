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
  //PageController 생성
  final PageController pageController = PageController();

  // initState() 함수 등록
  @override
  void initState() {
    //부모 initState() 실행
    super.initState();

    //타이머 추가
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        //현재 페이지 받아올 변수 선언 - controller 통해 가져옴
        int? nextPage = pageController.page?.toInt();

        //nextPage-> null인 경우 예외 처리
        if (nextPage == null) {
          return;
        }
        //순환 하도록 정의
        if (nextPage == 4) {
          nextPage = 0;
        } else {
          nextPage++;
        }
        //페이지 변경 동작 정의
        pageController.animateToPage(
          nextPage, //1) 이동할 페이지 (int)
          duration: Duration(microseconds: 500), //2) 이동 시 소요시간
          curve: Curves.ease, //3) 페이지 변경 애니메이션 작동 방식
        );
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
        //PageView 위젯에 컨트롤러 등록
        controller: pageController,

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
