import 'package:flutter/material.dart';
import 'package:atomhacks_2021/helper/demo_values.dart';
import 'package:atomhacks_2021/view/widgets/post_card.dart';
import 'package:atomhacks_2021/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GroupAct"),
      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "increment",
          child: Icon(Icons.map),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapSample()))),
    );
  }
}
