import 'package:atomhacks_2021/model/post_model.dart';
import 'package:atomhacks_2021/model/user_model.dart';
import 'package:atomhacks_2021/model/comment_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "Vaibhav",
      email: "Vaibhav.Hariani@gmail.com",
      followers: 0,
      joined: DateTime(2021, 3, 20),
      posts: 1,
      image: "assets/images/Vaibhav.png",
    ),
    UserModel(
        id: "AMA",
        name: "Zawad",
        email: "Munshiz@bxscience.edu",
        followers: 1,
        joined: DateTime(2020, 3, 20),
        posts: 1,
        image: "assets/images/Zawad.png"),
    UserModel(
        id: "3",
        name: "Sakib",
        email: "PathenS@bxscience.edu",
        followers: 1,
        joined: DateTime(2020, 3, 20),
        posts: 1,
        image: "assets/images/Sakib.png"),
    UserModel(
        id: "4",
        name: "Oliver",
        email: "OldeVer@1337.com",
        followers: 1,
        joined: DateTime(2020, 3, 20),
        posts: 1,
        image: "assets/images/Oliver.png"),
  ];

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment: "This looks fantastic!",
      user: users[0],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Incredible ",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment: "I like this app!",
      user: users[0],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment: "Good news!",
      user: users[2],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "This is weird, I've never heard of this before",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment: "This is actually sick, I'm so happy right now",
      user: users[2],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment: "This is actually really interesting, I'll check it out",
      user: users[1],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "OMG DUDE THIS IS SO COOL!!!!!",
      user: users[0],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment: "Great!",
      user: users[1],
      time: DateTime(2017, 6, 30),
    ),
  ];

  static List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "AMA!",
      summary: "An AMA on the Research Done by The Great Vaibhav Hariani",
      body:
          "Vaibhav Hariani is a renowned nobel lauerate and researcher of metaphysics and racism at Stanford University. Come and ask him questions about everything since he knows everything!",
      imageURL: "assets/images/AMA.jpg",
      postTime: DateTime(2019, 6, 29),
      reacts: 3,
      views: 4,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "News Article",
      summary:
          "Article Regarding Racism About The  Housing Authority I found interesting",
      body:
          "https://chicagounbound.uchicago.edu/cgi/viewcontent.cgi?article=3812&context=uclrev",
      imageURL: "assets/images/AMA.jpg",
      postTime: DateTime(2019, 4, 13),
      reacts: 4,
      views: 5,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Protest!",
      summary: "Join Us In Protesting For Pay Equality!",
      body:
          "Equal Pay is something I care about and I'd like to advocate for it. Join us in protesting!",
      imageURL: "assets/images/PinDROP.jpg",
      postTime: DateTime(2019, 1, 12),
      reacts: 2,
      views: 6,
      comments: _comments,
    ),
  ];
  static Set<Marker> pins = {
    Marker(
        markerId: MarkerId("Zawad"), position: LatLng(40.830283, -73.851971)),
    Marker(
        markerId: MarkerId("Bxsci"),
        position: LatLng(40.87833059490717, -73.89107432441394)),
    Marker(
        markerId: MarkerId("Sakib"),
        position: LatLng(40.840395017066896, -73.84533594442213)),
  };
}
