import 'package:atomhacks_2021/model/post_model.dart';
import 'package:atomhacks_2021/model/user_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "News Article",
      name: "Vaibhav Hariani",
      email: "Vaibhav.hariani@gmail.com",
      followers: 123,
      joined: DateTime(2020, 5, 20),
      posts: 8,
      image:"assets/images/user.jpg"
    ),
    UserModel(
      id: "AMA ",
      name: "Zawad",
      email: "MunshiZ@bxscience.edu",
      followers: 456,
      joined: DateTime(2018, 5, 30),
      posts: 13,
      image:"assets/images/user.jpg"
    ),
    UserModel(
      id: "Protest Date",
      name: "Sakib",
      email: "sakib@bxscience.edu",
      followers: 69420,
      joined: DateTime(2017, 6, 30),
      posts: 31,
      image:"assets/images/user.jpg"
    ),
    UserModel(
        id: "4",
        name: "Oliver",
        email: "MapMaster@gmail.com",
        followers: 789,
        joined: DateTime(2017, 6, 30),
        posts: 14,
        image:"assets/images/user.jpg"
    ),
  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[1],
      title: "Ask Me Anything!",
      summary: "I conducted an in depth research study on the impacts of race. As me about it!",
      body: "I'm a researcher at Stanford University studying how racism has had serious implications in American Politics",
      imageURL: "assets/images/AMA.jpg",
      postTime: DateTime(2019, 6, 29),
      reacts: 123,
      views: 456,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "News Article",
      summary: "Article Regarding How the Housing Authority has seriously harmed those in poverty, and how it is designed to supress economic mobility",
      body: "In 1933, faced with a housing shortage, the federal government began a program explicitly designed to increase — and segregate — America's housing stock. Author Richard Rothstein says the housing programs begun under the New Deal were tantamount to a",
      imageURL: "assets/images/NewStub.jpg",
      postTime: DateTime(2019, 4, 13),
      reacts: 321,
      views: 654,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Protest!",
      summary: "Join Me in Protesting for equal pay opportunities!",
      body: "Advocates of women's economic equality gathered on the steps of New York City Hall Tuesday to speak out against the various barriers women encounter in the workplace.",
      imageURL: "assets/images/pinDROP.jpg",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
    ),
    PostModel(
      id: "PROTESTESROS",
      author: users[3],
      title: "Protest!",
      summary: "Join Me in Protesting for equal pay opportunities!",
      body: "Advocates of women's economic equality gathered on the steps of New York City Hall Tuesday to speak out against the various barriers women encounter in the workplace.",
      imageURL: "assets/images/pinDROP.jpg",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
    ),
  ];
}