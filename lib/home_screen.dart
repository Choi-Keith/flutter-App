import 'package:demo05/assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/ic_launcher.png',
                  color: Colors.purple,
                  scale: 1.5,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 400.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 1.0),
                  ),
                  child: IconButton(
                    alignment: AlignmentDirectional.centerStart,
                    icon: Icon(
                      Icons.search,
                      size: 40.0,
                      color: Colors.purple,
                    ),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: homeSearchDelegate());
                    },
                    tooltip: '请输入您想要的消息',
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        '怎么样才能把自己一天的知识记录下来，怎么样才能方便的复习知识，让知识慢慢的在脑海中沉淀',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF3F5EFB)
                        ),
                        
                      ),
                     
                    ),
                    Divider(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        '怎么样才能把自己的知识、生活技巧分给别人，让别人也能够拥有你的知识和技能',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF22c1c3)
                        ),
                      ),
                    ),
                    Divider(
                      height: 2.0,
                      color: Colors.grey,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        '每天记录一点东西，每天分享一点小技能，做一个生活中的小能手',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFfdbb2d)
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class homeSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      child: Card(
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
    );
  }
}
