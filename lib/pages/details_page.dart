import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {

  static const String id = "details_page";
  final String? userId;

  const DetailsPage({super.key,this.userId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("DetailsPage");
  }

  _backToFinish(){
    Map map = {"data":"Works fine"};
    Navigator.of(context).pop(map); // pop() funksya page ni yopadi.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          child: Text("Welcome ${widget.userId}"),
          onPressed: (){
            _backToFinish();
          },
        ),
      ),
    );
  }
}
