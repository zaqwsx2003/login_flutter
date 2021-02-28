import 'package:flutter/material.dart';

void main() => runApp(SnowDeerExample());

class SnowDeerExample extends StatelessWidget {
  static const title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
//            appBar: AppBar(title: Text(title)),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        initialValue: 'ssapil7@gmail.com',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '비밀번호를 입력하세요.',
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        child: Text("로그인"),
                        onPressed: () => {print("LoginButton is Clicked.")},
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      RaisedButton(
                        child: Text("닫기"),
                        onPressed: () => {print("CancelButton is Clicked.")},
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}