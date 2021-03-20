import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:atomhacks_2021/model/comment_model.dart';
import 'package:atomhacks_2021/model/user_model.dart';

class PostModel {
  final String id, title, summary, body, imageURL;
  final DateTime postTime;
  final int reacts, views;
  final UserModel author;
  final List<CommentModel> comments;
  final Marker location;

  const PostModel({
    @required this.id,
    @required this.title,
    @required this.summary,
    @required this.body,
    @required this.imageURL,
    @required this.author,
    @required this.postTime,
    @required this.reacts,
    @required this.views,
    @required this.comments,
    this.location,
  });

  String get postTimeFormatted => DateFormat.yMMMMEEEEd().format(postTime);
}
