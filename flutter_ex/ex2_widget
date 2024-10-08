import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('study to container'),
        ),
        body: CustomContainer(),
      ), // 도화지
    ),
  );
}
class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300, // 다 채우기 double.infinity,
        height: 300,
        // double.infinity ,
        //color: Colors.purple.shade200,

        padding: EdgeInsets.fromLTRB(10, 12, 10, 12), // 내부의 테두리 간격 조정
        // margin: EdgeInsets.symmetric(vertical: 12 ,horizontal: 10), // 객체 외부 간격 조정
        decoration: BoxDecoration(
            color: Color(0xFF1B8DFF),
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10)
          ],
        ),
          
        child:  Center(child: Container(
          color: Colors.yellow,
            child: Text('hello Container hello Container')
        ),
        ),
        )

    );
  }
}
//container 안에서 Boxdecoration 있으면 밖에 colors있으면 안됨
