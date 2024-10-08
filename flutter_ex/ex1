import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: () {
            print('Tab!');
          },),
          Icon(Icons.play_arrow),
        ],
        centerTitle: false,
        title: Text('This is App bar')
      ),
      body: TestWidget(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print('Tab! FAB!');
          },),
    ), // 도화지
  ));
}


class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Text(
          'Hello Flutter',
          style: TextStyle(
            color: Colors.pink,
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
