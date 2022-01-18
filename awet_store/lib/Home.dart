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
              'Flutter demo',
              style: TextStyle(color: Colors.deepPurple),
            ),

          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: 390,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover)),
          )
      ),

    );
  }
}
