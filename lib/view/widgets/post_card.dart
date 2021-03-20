
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:atomhacks_2021/helper/demo_values.dart';
import 'package:atomhacks_2021/view/presentation/themes.dart';
import 'package:atomhacks_2021/view/pages/post_page.dart';
import 'package:atomhacks_2021/model/post_model.dart';
import 'package:atomhacks_2021/view/widgets/inherited_widgets/inherited_post_model.dart';

bool _isLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.landscape;

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key key, @required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = _isLandscape(context) ? 6 / 2 : 6 / 3;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PostPage();
        }));
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Card(
          elevation: 2,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            
            // I created it here!
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  _Post(),
                  Divider(color: Colors.grey),
                  _PostDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[_PostImage(), _PostTitleSummaryAndTime()]),
    );
  }
}

class _PostTitleSummaryAndTime extends StatelessWidget {
  const _PostTitleSummaryAndTime({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Getting data from inherited widget
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle titleTheme = Theme.of(context).textTheme.headline6;
    final TextStyle summaryTheme = Theme.of(context).textTheme.bodyText2;
    // using data retrieved from inherited widget
    final String title = postData.title;
    final String summary = postData.summary;
    final int flex = _isLandscape(context) ? 5 : 3;

    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(title, style: titleTheme),
                SizedBox(height: 2.0),
                Text(summary, style: summaryTheme),
              ],
            ),
            _PostTimeStamp(),
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(flex: 2, child: Image.asset(postData.imageURL));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _UserImage(),
        _UserNameAndEmail(),
        _PostTimeStamp(),
      ],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle nameTheme = Theme.of(context).textTheme.subtitle2;
    final TextStyle emailTheme = Theme.of(context).textTheme.bodyText2;

    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(postData.author.name, style: nameTheme),
            SizedBox(height: 2.0),
            Text(postData.author.email, style: emailTheme),
          ],
        ),
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(
      flex: 1,
      child: CircleAvatar(
        backgroundImage: AssetImage(postData.author.image),
      ),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  const _PostTimeStamp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle timeTheme = TextThemes.dateStyle;
    return Expanded(
      flex: 2,
      child: Text(DateFormat('yyyy-MM-dd – kk:mm').format(postData.postTime), style: timeTheme),
    );
  }
}