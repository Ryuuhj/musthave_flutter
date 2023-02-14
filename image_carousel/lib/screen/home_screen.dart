import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):
      super(key: key);

  @override
  Widget build(BuildContext context) { //생명주기 차트에서 build() -> state dirty일 때 재실행
    //상태바 색상 변경
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold( //실행 결과로 위젯 반환
      body: PageView(
        children: [1, 2, 3, 4, 5] //샘플 리스트 생성
            .map( //리스트 별 각 위젯으로 매핑
                (number) => Image.asset(
                  'asset/img/image_$number.jpeg',
                  fit: BoxFit.cover,
                ), //매핑할 이미지 경로
            ).toList(),
      ),
    );
  }
}