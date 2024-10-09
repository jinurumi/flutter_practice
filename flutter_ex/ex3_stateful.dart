import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      /// 안드로이드 / windows맞춤
      home: Scaffold(
        ///폰 테두리에 묻히지 않도록
        appBar: AppBar(
          /// 상단 바
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
      ExampleStateful2(index2: 3), /// 이 위젯에서 초기값을 받아오고 싶을 때
    ]);
  }
}

/// stless
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

/// stful
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
          color: Colors.blue.withOpacity(index / 5),
          child: Center(
            child: Text('$index'),
          ),
        ),
      ),
    );
    
  }
}
class ExampleStateful2 extends StatefulWidget {
  final int index2;

  const ExampleStateful2({required this.index2, super.key});

  @override
  State<ExampleStateful2> createState() => _ExampleStateful2State();
}

class _ExampleStateful2State extends State<ExampleStateful2> {
  late int _index2;  //private 변수를 사용해줌

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _index2 = widget.index2;

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex:1,

      child: GestureDetector(
        onTap: (){
          setState(() {
            if (_index2 == 5) { //state 객체의 index2가 아닌 상위객체의 index2 를 바라봄
              _index2 =0;
              return;
            }
            _index2++;
          });
        },
child: Container(
          color: Colors.pink,
        child: Center(child: Text('$_index2'),),
      ),
      )
    );
  }
}

