/// callback 이란?
/// 어떠한 동작이후에 다른 위젯에서 값을 처리하는 방식
/// 해당 위젯을 벗어나면 처리가 까다로워지는 것을 callback 으로 일부 해결 가능
///

/// gestureDetector 다양한 입력형태
/// vs
/// InkWell 눌렀을때 파형이 번지는 듯한 모양
/// UI적으로 중요한 작업을 빠르게 해야할 때

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text('다양한 Flutter의 입력 알아보기'),
        )),
        body: const Body(),
      ),
    ),
  );

}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Count : $value',
              style: const TextStyle(fontSize: 30),
            ),
            /// addCounter 이름 자체를 넘겨주는 것이지, 함수의 실행을 넘겨주는 것이 아님.
            /// 고로 ()는 적지 않음
            TestButton(addCounter),
          ]),
        ),
      ],
    );
  }

  void addCounter() => setState(() => ++value);

}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  // Textbutton에 함수를 넘겨줄때 필요함
  final VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: InkWell(
        onTap: () => callback.call(),
        onDoubleTap: () => callback.call(),
        child: Center(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(border: Border.all()),
                child: const Text(
                  'Up Counter',
                  style: TextStyle(fontSize: 24),
                ))),
      ),
    );
  }

}


