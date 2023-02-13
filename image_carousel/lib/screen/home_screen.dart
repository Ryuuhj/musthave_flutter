import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):
      super(key: key);

  @override
  Widget build(BuildContext context) { //생명주기 차트에서 build() -> state dirty일 때 재실행
    return Scaffold( //실행 결과로 위젯 반환
      body: Text('Home Screen'),
    );
  }
}