import 'package:flutter/material.dart';
import 'package:ngdemo1/pages/details_page.dart';
import 'package:ngdemo1/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  static const String id = ("home_page");
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {

  Future _openDetails() async{
    String userId = '1000';

    // push() funcsiya yangi page ochadi.
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(userId: userId);
    }));
  }

  Future _openDetails2() async{
    String userId = '1000';

    // pushReplacement() funcsiya yangi page ochadi.
    Map result = await Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context){
      return  DetailsPage(userId: userId);
    }));
    if(result != null && result.containsKey("data")){
      print(result["data"]);
    }else{
      print("Nothing");
    }
  }

  Future _openDetails3() async{
    String userId = "2333";
    Navigator.of(context).pushNamed(SettingsPage.id,arguments: userId);
  }

  Future _openDetails4() async{
    // Home Task
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.cyan,
          textColor: Colors.white,
          child: Text("open"),
          onPressed: (){
            _openDetails4();
          },
        ),
      ),
    );
  }
}
