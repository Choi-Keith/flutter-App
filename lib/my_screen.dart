import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        title: Text("我的"),
        backgroundColor: Color(0xFF5D26C1),
      ),
      body: Center(
      
        child: Column(
          children: <Widget>[

            RaisedButton(
              
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('choikeith'),
                contentPadding: EdgeInsets.all(8.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.choikeith.com/images/touxiang.jpg')
                ),
              ),
            ),
            Divider(height: 10.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
              
                title: Text('消息中心'),
                leading: Icon(Icons.notifications_active,color: Color(0xFF59C173),),
              ),
            ),
            Divider(height: 0.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('我的照片'),
                leading: Icon(Icons.image,color: Color(0xFF2ebf91),),
              ),
            ), 
            Divider(height: 0.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('关注'),
                leading: Icon(Icons.person_pin_circle,color: Colors.orangeAccent,),
              ),
            ), 
            Divider(height: 0.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('我的收藏'),
                leading: Icon(Icons.local_play,color: Colors.orangeAccent,),
              ),
            ),          
            Divider(height: 0.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('我的笔记'),
                leading: Icon(Icons.mode_edit,color: Color(0xFF4568DC),),
              ),
            ),
            Divider(height: 0.0,),
            RaisedButton(
              onPressed: (){

              },
              color: Color(0xFFffffff),
              child: ListTile(
                title: Text('设置'),
                leading: Icon(Icons.settings),
              ),
            )
          ],
        ),
      )
    );
    return scaffold;
  }
}