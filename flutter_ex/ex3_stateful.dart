import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless vs Stateful'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(),
    ]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child: Container(
      color: Colors.red,
    ));
  }
}

// 별도의 state 객체를 이용해 위젯의 색이나 형체를 바꾼다!
class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int index; // initstate를 쓰기위해 사용. 나중에 값이 들어가는지 확인해야함
  // index 가 들어가지 않아도 되는 상황이 있다면 int? index 사용가능(null 가능)
  late TextEditingController textEditingController;


  // 초기값이 바뀌면 안될 때 initstate 사용
  @override
  void initState() {
    super.initState(); // 이 위젯의 상위state 도 같이 initstate 됨
    index = 5;
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  } // dispose 컴퓨터에 자원 반납하기. 리소스 반납!!


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (index == 5) {
              index = 0;
              return;
            }
            index++;
          });


            //print(index);
          },
        child: Container(
          color: Colors.blue.withOpacity(index/5),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
  }
}
