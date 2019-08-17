import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'trend_screen.dart';
import 'edit_screen.dart';
import 'my_screen.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState(){
    list
      ..add(HomeScreen())
      ..add(TrendScreen())
      ..add(EditScreen())
      ..add(MyScreen());
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.purple,
            ),
            title: Text(
              "主页",
              style: TextStyle(
                color: Colors.purple,
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.data_usage,
              color: Color(0xFF2ebf91)
            ),
            title: Text(
              "动态",
              style: TextStyle(
                color: Color(0xFF2ebf91)
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit,
              color: Color(0xFF0083B0)
            ),
            title: Text(
              "记录",
              style: TextStyle(
                color: Color(0xFF0083B0)
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xFF5D26C1),
            ),
            title: Text(
              "我的",
              style: TextStyle(
                color: Color(0xFF5D26C1)
              ),
            )
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}