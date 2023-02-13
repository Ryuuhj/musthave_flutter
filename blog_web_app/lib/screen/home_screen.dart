import 'package:flutter/material.dart';
//홈스크린에 웹뷰 **플러그인** 임포트
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  //컨트롤러 변수 선언
  WebViewController? controller;

  //const 생성자 -> controller가 const값이 아니므로 사용 불가능
   /*const*/ HomeScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        //Scaffold의 매개변수로 넣어줌
        appBar: AppBar(
          //배경색
          backgroundColor: Colors.orange,
          //앱바 제목
          title: Text('Code Factory'),
          //가운데 정렬
          centerTitle: true,
          //상호작용을 위한 액션 함수 (여러개 가능)
          actions: [
            //홈버튼 눌렀을 때 액션
            IconButton(
              //버튼 눌렀을 때 콜백함수 정의
                onPressed: (){
                  if(controller != null) {
                    //controller가 null이 아닐 경우에만 실행
                    controller!.loadUrl('https://blog.codefactory.ai');
                  }
                }, 
                icon: Icon(
                  Icons.home,
                )
            )
          ],
        ),
        body: WebView(
          //웹뷰 생성 함수
          onWebViewCreated: (WebViewController controller){
            this.controller = controller; //위젯에 컨트롤러 저장
          },
          //메인 화면 입성 시 처음 띄울 페이지 주소
          initialUrl: 'https://blog.codefactory.ai',
          //자바스크립트 허용
          javascriptMode: JavascriptMode.unrestricted,
        ),
      );
    }
}
