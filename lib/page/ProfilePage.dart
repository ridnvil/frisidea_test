import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frisidea_test/model/ModelUser.dart';
import 'package:frisidea_test/provider/UserProvider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ModelUser _modelUser;

  @override
  void initState() {
    super.initState();
    _modelUser = Provider.of<UserProvider>(context, listen: false).getUser();
  }

  Widget openLink(String title, String url) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          InkWell(
            child: Text(url),
            onTap: () {
              launch(url);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_modelUser.realname),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProfileAvatar(
                '',
                child: Image.network(_modelUser.avatar),
                borderColor: Colors.blue,
                borderWidth: 5,
                elevation: 4,
                radius: 100,
              ),
              SizedBox(height: 20,),
              Text("${_modelUser.realname}", style: TextStyle(fontSize: 30),),
              Text("${_modelUser.email}"),
              openLink("Github Link", _modelUser.github),
              openLink("LinkedIn Link", _modelUser.linkedin),
            ],
          ),
        ],
      )
    );
  }
}
