// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frisidea_test/model/ModelUser.dart';
import 'package:provider/provider.dart';

class UserProvider extends ChangeNotifier {
  ModelUser _modelUser;

  ModelUser getUser() {
    _modelUser = ModelUser.toObject();
    print(_modelUser.email);
    return _modelUser;
  }
}