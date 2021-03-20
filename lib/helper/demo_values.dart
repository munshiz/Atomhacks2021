import 'package:atomhacks_2021/model/post_model.dart';
import 'package:atomhacks_2021/model/user_model.dart';
import 'package:atomhacks_2021/model/comment_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "Ishfar",
      email: "ishfar@gmail.com",
      followers: 123,
      joined: DateTime(2019, 4, 30),
      posts: 12,
      image:"assets/images/user.jpg"
    ),
    UserModel(
<<<<<<< HEAD
      id: "AMA",
      name: "Zawad",
      email: "Munshiz@bxscience.edu",
=======
      id: "2",
      name: "Ishrak",
      email: "ishrak@gmail.com",
>>>>>>> 0f0491b170c234a854af0a655d614de0a075be14
      followers: 456,
      joined: DateTime(2018, 5, 30),
      posts: 13,
      image:"assets/images/user.jpg"
    ),
    UserModel(
      id: "3",
      name: "Shakleen",
      email: "shakleen@gmail.com",
      followers: 789,
      joined: DateTime(2017, 6, 30),
      posts: 14,
      image:"assets/images/user.jpg"
    ),
  ];

    static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
          "Et hic et sequi inventore. Molestiae laboriosam commodi exercitationem eum. ",
      user: users[0],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Unde id provident ut sunt in consequuntur qui sed. ",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment: "Eveniet nesciunt distinctio sint ut. ",
      user: users[0],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment: "Et facere a eos accusantium culpa quaerat in fugiat suscipit. ",
      user: users[2],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Necessitatibus pariatur harum deserunt cum illum ut.",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[2],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[1],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Neque est ut rerum vel sunt harum voluptatibus et. ",
      user: users[0],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment:
          "Hic accusantium minus fuga exercitationem id aut expedita doloribus. ",
      user: users[1],
      time: DateTime(2017, 6, 30),
    ),
  ];


  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "Maple Trees",
      summary: "An in-depth study on maple trees.",
      body: "The study is a lie. I just really really like maple trees.",
      imageURL: "assets/images/leaf.jpg",
      postTime: DateTime(2019, 6, 29),
      reacts: 123,
      views: 456,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Oak Trees",
      summary: "Preaching about oak trees",
      body: "Oak trees are the best. All other trees are sub-par.",
      imageURL: "assets/images/leaf.jpg",
      postTime: DateTime(2019, 4, 13),
      reacts: 321,
      views: 654,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Mango Trees",
      summary: "Gives shadow and fruit. Absolute win, no?",
      body: "I just love mangos. What's better than mangos? The tree that gives mangos.",
      imageURL: "assets/images/leaf.jpg",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
    ),
  ];
}