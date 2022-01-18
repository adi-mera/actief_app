import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'StartBlok Actief',
              style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),

          ),
          body: ListView(
            children: [

            ],
          )
      ),

    );
  }
}



class UpperPart extends StatelessWidget {
  const UpperPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

