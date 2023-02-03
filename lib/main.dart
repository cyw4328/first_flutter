import 'package:flutter/material.dart';

void main() {
  // run app 은 앱을 시작해주세요 라는 부분이다.
  // const 뒤에는 메인페이지 부분이다.
  runApp(const MyApp());
}

// ---------------이 부분은 기본적인 부분 ------
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// ----------------------------------------

  // 리턴 구분 안에 메인페이지 디자인을 해주면 된다.
    // flutter 에서 앱 디자인 넣는 법 : 1. 위젯 짜집기

    // MaterialApp 도 위젯이다. (구글에서 기본적으로 제공하는 디자인 위주로 사용가능하다.)
    // -> 그냥 커스팅마이즈한 디자인 하고 싶다면 그냥 MaterialApp 사용하자 ( 기본적인 기능만 사용 )
    // 아이폰 관련 디자인 사용 관련 위젯 ( CupertinoApp )
    return MaterialApp(
      /*
      * 위젯 종류 (대표적인 4가지)
      * 1. 글자 위젯
      *  -> Text('안녕')
      *
      * 2. 이미지 위젯
      *  -> Image.asset('assets/images/image.PNG')
      *  ( 이미지 경로는 pubspec.yami 파일 중간에 flutter 하위에 경로를 지정해주어야한다. )
      *       -> flutter:
      *           assets:
      *             - assets/images/
      *  ( 난 프로젝트 내 assets/images/image.PNG 로 테스트 )
      *
      * 3. 아이콘 위젯
      *  -> Icon(Icons.shop) => 아이콘의 종류는 따로 찾아보자
      *
      * 4. 박스 위젯
      *  -> Container(width: 50,height: 50,color: Colors.red) -> 네모 박스 넣을 때
      *  ( width: 50,height: 50 일때 단위는 Lp 이다. )
      *  ( 만약 가운데로 설정 하고 싶다면 home 에 Center 위젯 를 사용하여 child 에 지정해준다. )
      *   home: Center(
      *     child: Container(width: 50,height: 50,color: Colors.red),
      *  -> SizedBox() => 비슷한 박스 위젯방법 ( SizedBox(width: 50,height: 50,) )
      *   ),
      *
      *   Container ( 무겁다. ) , SizedBox ( 가볍다. )
      * */



      // home: Text('\n나는 왜 이 길에\n서 있나 \n이게 정말 나의 \n길인가 \n이길의 끝에서 \n내꿈이 이뤄질까'),
        /*
        home: Scaffold(
          appBar: AppBar(), -> 상단 메뉴바 부분 설정
          body: Container(), -> 가운데 내용 부분 설정
          bottomNavigationBar: BottomAppBar(child: Text('하단부 입니다.')), -> 하단부 고정바 부분 설정
        */

       /*
       *  한 줄로 가로 로 이어서 보여주고 싶다면 Container 대신 Row 위젯을 사용하면 된다.
       *
       home: Scaffold(
        body: Row(
          children: [
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 가로 축 정렬 => 가운데 정렬(center) , spaceEvenly(display : flex 와 비슷)
            crossAxisAlignment: CrossAxisAlignment.center, 세로 축 정렬
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      )
       * */
      /*
       *  한 줄로 세로 로 이어서 보여주고 싶다면 Container 대신 Row 위젯을 사용하면 된다.
       home: Scaffold(
        body: Column(
          children: [
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, => 세로 축 정렬
            crossAxisAlignment: CrossAxisAlignment.center,
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
      )
       * */



      /* 기본적인 구조에 그림 그리기 과제 해본것 */
      /*
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱임'),
        ),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            child: Row(
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),height: 70,
          ),
        ),
      )
      */


      // 마진 , 패딩 , css 수정 에 대한 부분
      /*
      home: Scaffold(
        appBar: AppBar(title: Text('앱임')),
        body: Align(
          // Center 말고 원하는 부분에 넣고 싶을 때는 Align 위젯 사용
          // Alignment. 뒤에 지정하는 부분에 위치 한다.
          alignment: Alignment.centerRight,

          child: Container(
            //child: Text('글씨'),
            width: 200 , height: 200, color: Colors.red,

            // width: double.infinity => 부모의 크기를 벗어나지 않는 선에서 최대 크기 설정

            // 마진 , 패딩
            //margin: EdgeInsets.all(20), // ( 마진,패딩 을 주기 위해선 EdgeInsets 사용한다. => 상하전후로 공통으로 들어간다. )
            //padding: EdgeInsets.fromLTRB(10, 0, 10, 0), // ( 마진,패딩 주기 위해선 fromLTRB 사용한다. => 위아래왼쪽오른쪽 다 따로 주는 법 )

            // decoration : BoxDecoration() 를 이용하면 해당 부분의 css 를 수정한다.
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black)
            // ),


          ),
        ),
      ),
      */




      // 글자와 아이콘 스타일
      // 글씨는 Text() 안에 style 에 TextStyle 로 설정
      /*
      home: Scaffold(

        // appBar 에 대한 부분
        /*
        * appBar 에서 자주 사용하는 것들
        *   1. title : 왼쪽 제목
        *   2. leading : 왼쪽에 넣을 아이콘
        *   3. actions : [ 우측 아이콘들 ]
        */
        /*
        appBar: AppBar(
            title: Text('앱임'),
            leading: Icon(Icons.star),
            actions: [Icon(Icons.star),Icon(Icons.star)],
        ),
        * */

        appBar: AppBar(

        ),

        body: SizedBox(
          // SizeBox 안에 주석을 보려면 밑 child 주석 풀어야함
          //child:

          // 글씨 스타일
          //Text('안녕하세요.',
          //  style: TextStyle( color: Color(0xffaaaaaa) ), => rgb 로 지정할때는 0xff 앞에 붙이고 이어 붙이기
          //  style: TextStyle( fontWeight: FontWeight.w700),
          //)

          // 아이콘 스타일
          // Icon(Icons.star,size: 50,color: Colors.red,)


          // 버튼 위젯 스타일
          // 버튼 사용법
          // 버튼에는 child 와 onPressed 을 넣어줘야 잘 보인다.
          // 버튼 스타일도 style 속성으로 사용한다. ( style: ButtonStyle(), )

          /* 버튼 종류
          *  1. TextButton() => 글씨만 보이는 형태
          *   ElevatedButton(
                child: Text('버튼'),
                onPressed: (){}, // 사용할 함수를 집어넣는 속성
                style: ButtonStyle(),
              )
          *
          *  2. IconButton() => 아이콘 버튼
          *   IconButton(
                icon: Icon(Icons.star),
                onPressed: (){}, // 사용할 함수를 집어넣는 속성
                style: ButtonStyle(),
              )
          *
          *  3. ElevatedButton() => 버튼 모양의 떠있는듯한 버튼
          *   ElevatedButton(
                child: Text('버튼'),
                onPressed: (){}, // 사용할 함수를 집어넣는 속성
                style: ButtonStyle(),
              )
          *
          * */

          // 버튼 사용법
          // 버튼에는 child 와 onPressed 을 넣어줘야 잘 보인다.
          // 버튼 스타일도 style 속성으로 사용한다. ( style: ButtonStyle(), )
        ),
      ),

      */


      // Flexible => 길이 설정시 30% 처럼 % 로 표현해야 할 때 사용함
      // flex 에 % 처럼 사용한다.
      //   home: Scaffold(
      //     appBar: AppBar(),
      //     body: Row(
        //     children: [
        //       Flexible(child: Container(color: Colors.blue),flex: 3),
        //       Flexible(child: Container(color: Colors.red),flex: 7)
        //     ],
        //   ),


      // Expanded => flex 를 1 가진 Flexible 박스와 같음
      // (사용 했을 때 남는 공간을 크게 차지함)
      // home: Scaffold(
      //   appBar: AppBar(),
      //   body: Row(
      //     children: [
      //       Expanded(child: Container(color: Colors.blue)),
      //       Flexible(child: Container(color: Colors.red , width: 100))
      //     ],
      //   ),
      // ),

      // Flexible => 박스폭을 %로 주고 싶으면 Flexible
      // Expanded => 박스 하나를 넓게 채우려면 Expanded

      // consol 창에 파란색 버튼(open flutter Devtools) 을 누르면 위젯의 사이즈별로 정리 되어서 나옴



      // 과제 풀이 시작 ( 당근마켓 커스팅 마이징 해보기 ) -- 넓이 고정값으로 설정한 것
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('삼산1동',style: TextStyle(fontWeight: FontWeight.w600)),
              Icon(Icons.expand_more)
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
          ],
        ),

        body: Container(
            child: Row(
              children: [
                Expanded(child: Image.asset('assets/images/camera.jpg',)),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('캐논 DSLR 100D (단렌즈,충전기 \n 16기가 SD 포함)',style: TextStyle(fontWeight: FontWeight.w600)),
                        Text('부천시 상동 끌올 10분 전',style: TextStyle(color: Color(0xffaaaaaa))),
                        Text('160,000원'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border),
                            Text('4')
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),height: 150,padding: EdgeInsets.all(15)
        ),
      ),



      /*
      커스텀 위젯 문법
      레이아웃 위젯으로만 작성시 코드가 굉장히 길어 질수 있는 현상이 일어남
      그럴때는 한단어로 (커스텀 위젯을 사용하여 깔끔하게 축약이 가능하다.)

      사용법 :
      1. main 바깥 부분에 stless 입력 후 tab 키를 눌러 class 를 생성해준다.
      2. class 이름을 정해준다.
      3. override 의 return 에 사용하고 싶은 위젯의 형태를 입력해준다.
      4. 사용하고 싶은 부분에 class이름() 이렇게 사용한다.
      난 이페이지 맨 하단부에 위치하게 생성하였다.

      아무거나 다 커스텀 위젯화 X
      재사용 많은 ui들 , 큰 페이지들 O
      */

      /*
      커스텀 위젯
      home: Scaffold(
        appBar: AppBar(),
        body: ShopItem(), // 내가 만든 커스텀위젯
        bottomNavigationBar: BottomAppBar(),
      ),
      */

      /*
      ListView
      앱에 보여줄 항목이 100개면???
      Column 위젯에 100개를 넣는다고 스크롤바가 자동으로 생성되지 않는다.
      이럴 때는 ListView 위젯을 사용하면 자동으로 스크롤바가 생성된다.
      특징
      1. 스크롤 위치 감시도 가능하다.
      2. 스크롤바 자동 생성
      3. 메모리 절약기능

      사용 실제예제 => 인스타 피트 , 쇼핑몰 리스트 부분은 ListView 위젯을 사용한다.
      */

      /*
      ListView 코드 작성

      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Image.asset('assets/images/camera.jpg',height: 400,),
            Image.asset('assets/images/camera.jpg',height: 400,),
            Text('ListView 위젯'),
            Text('ListView 위젯'),
            Text('ListView 위젯'),
            Text('ListView 위젯'),
          ],
        ),
      ),
      */
    );
  }
}
/*
문법 설명
( 플러터를 만든사람이 정한 규격 )
1. 커스텀 위젯은 class 로 만듭니다. ( class 안에 변수 함수 가 많이 들어가야한다. )
( extends 를 이용하여 StatelessWidget 에 있는 class 의 형태를 받아서 사용한다. )

2. const ShopItem({Key? key}) : super(key: key);
( 이부분은 class 에 어떤 파라미터 넣을 수 있는지에 대한 정의하는 부분이다. )

3. override 부분은 class 안에 build 라는 함수 만드는 부분
( 타입은 생략해주어도 된다. -> dart 는 function 이라고 따로 작성하지 않아도 된다. )
!!( @override는 어떠한 것에 중복이 발생하였을때 이것부터 사용해라 라고 정해주는 부분이다.)
-> 만일 extends StatelessWidget 이걸로 StatelessWidget 를 복사해왔을때 Build(){} 라는 것도 존재 한다면
충돌이 발생하겠지만 이런 부분을 @override 로 먼저 잡아주는 것이다. ( 덮어 쓰는 것 )

4. return 에는 사용하였을때 나타나게 해주는 부분

문법은 파라미터 부분을 제외한 나머지 부분은 수정을 하지 않는다.

따로 변수에 담아서 사용 할 수 있다.
* 변수에 담아서 사용하는 방법은 기술적으로 이슈가 될수 있기때문에
  쉽게 바뀌지 않는 부분만 변수를 이용해 사용한다. ( ex> 로고 , 상단바 등등 )
*/

/*
커스텀 위젯

var a = SizedBox(
  child: Text('안녕'),
);

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('이건 커스텀 위젯입니다.'),
    );
  }
}
*/


/*

* StatelessWidget 와 StatefulWidget 의 차이점

 - State 란?
  -> Flutter에서는 모든 것이 Widget으로 시작한다.
     Widget들을 컨트롤 해주고 어플리케이션을 만들어 나갈 때 State(상태)를 사용한다.
     또한 Widget에는 Image, Icon, Text, Row, Column, Padding ... 등 모두 속한다.
     이러한 Widget들은 StatelessWidget과 StatefulWidget을 상속 받아 만들 수 있다.

 - StatelessWidget
  -> StatelessWidget은 단 한번 만 Build되며, 한번 그려진 화면은 계속 유지되면서 성능 상 장점이 생긴다.

 - StatefulWidget
  -> StatefulWidget은 state를 포함하여, setState가 발생할 때마다 다시 재 Build를 한다.
     즉, 동적 화면을 구성하기 위해선 StatefulWidget을 사용해야 한다.

출처 : http://www.incodom.kr/Flutter/state#h_38a82bc2702f7b6ff1798e5ea7317431

*/

