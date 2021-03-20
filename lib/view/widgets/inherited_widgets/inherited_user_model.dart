import 'package:flutter/material.dart';
import 'package:atomhacks_2021/model/user_model.dart';

class InheritedUserModel extends InheritedWidget {
  final UserModel userData;
  final Widget child;

  InheritedUserModel({Key key, @required this.userData, this.child})
      : super(key: key, child: child);

  static InheritedUserModel of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedUserModel>());
  
  }

  @override
  bool updateShouldNotify(InheritedUserModel oldWidget) {
    return true;
  }
}