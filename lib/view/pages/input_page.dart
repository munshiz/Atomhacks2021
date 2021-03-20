import 'package:atomhacks_2021/main.dart';
import 'package:atomhacks_2021/view/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:atomhacks_2021/model/post_model.dart';

import 'package:atomhacks_2021/helper/demo_values.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String input_title;
    String input_description;
    String input_summary;
    TextEditingController _title_controller = TextEditingController();
    TextEditingController _description_controller = TextEditingController();
    TextEditingController _summary_controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a post"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _title_controller,
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
          TextField(
            controller: _summary_controller,
            decoration: InputDecoration(
              labelText: 'Summary',
            ),
          ),
          TextField(
            controller: _description_controller,
            decoration: InputDecoration(
              labelText: 'Description',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: (() {
            DemoValues.posts.insert(
                0,
                PostModel(
                  id: "3",
                  author: DemoValues.users[1],
                  title: _title_controller.text,
                  summary: _summary_controller.text,
                  body: _description_controller.text,
                  imageURL: "assets/images/PinDROP.jpg",
                  postTime: DateTime.now(),
                  reacts: 0,
                  views: 0,
                  comments: [],
                  location: Marker(
                      markerId: MarkerId("New Post"), position: post_position),
                ));
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          })),
    );
  }
}
