//import 'package:awet_store/video%20backg.dart';
//import 'dart:ui';
//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_icons/flutter_icons.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.purple,
        extendBodyBehindAppBar: true,
        extendBody: true,

        //APP BAR

        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.purpleAccent.shade700,
                size: 35,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: Icon(Icons.menu_sharp, color: Colors.purpleAccent.shade700, size: 35,),
          title: Text(
            'StartBlok Actief',
            style: TextStyle(
                color: Colors.purpleAccent.shade700,
                fontFamily: 'russo',
                fontSize: 27),
          ),
        ),



             //DRAWER

        drawer: Drawer(
          backgroundColor: Colors.transparent,
          elevation: 70,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Natalie Natalie", style: TextStyle(fontSize: 20),),
                accountEmail: Text("natali123@gmail.com", style: TextStyle(fontSize: 16, color: Colors.amber, fontWeight: FontWeight.bold)),

                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://startblokriekerhaven.nl/wp-content/uploads/2021/11/A5987B5A-65E6-4F39-8A8C-D73685F1FEF6_1_201_a-1536x1536.jpeg",),

                ),

                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          offset: Offset(-60, 60),
                          blurRadius: 170),
                    ],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/blue.jpeg"),
                    fit: BoxFit.fill,
                  ),
                ),


                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://startblokriekerhaven.nl/wp-content/uploads/2016/02/DSC_2962.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://startblokriekerhaven.nl/wp-content/uploads/2021/02/c972f160-635a-44ef-ad5e-ac9197e37496-350x350.jpg"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 34,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.calendar_today,
                    color: Colors.white, size: 33),
                title: Text(
                  "Club House",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box,
                    color: Colors.white, size: 34),
                title: Text(
                  "About",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.grid_3x3_outlined,
                    color: Colors.white, size: 34),
                title: Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info_outline_rounded,
                    color: Colors.white, size: 34),
                title: Text(
                  "Information",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.question_answer,
                    color: Colors.white, size: 34),
                title: Text(
                  "Q & A",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail,
                    color: Colors.white, size: 34),
                title: Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings,
                    color: Colors.white, size: 34),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'oswald'),
                ),
                onTap: () {},
              )
            ],
          ),
        ),



              //FLOATING ACTION BUTTOM
    // appBar: AppBar(
    // leading: Builder(
    // builder: (context) => IconButton(
    // icon: Icon(
    // Icons.menu,
    // color: Colors.purpleAccent.shade700,
    // size: 35,
    // ),
    // onPressed: () {
    // Scaffold.of(context).openDrawer();
    // },
    // ),
    // ),


        floatingActionButton: FloatingActionButton(
          //Floating action button on Scaffold
          onPressed: () {
            //Scaffold.of(context).openDrawer();
            //code to execute on button press
          },
          child: Icon(
            Icons.question_answer,
            size: 40,
          ), //icon inside button
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floating action button position to center


                   //BUTTOM BAR

        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: Colors.purpleAccent.shade700,
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              5, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.play_circle,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),

        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: LowerPart(),
            ),
            UpperPart(),
          ],
        ),
      ),
    );
  }
}


      //UPPER PART

class UpperPart extends StatelessWidget {
  const UpperPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Stack(
          children: [
            // BackgroundVideo(),
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/startblok.jpeg"),
                    fit: BoxFit.cover,
                    //opacity: 30,
                  ),
                ),
              ),
              //clipper: ClippingClass(),
            ),
            // BackdropFilter(
            //     filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            //   child: Container(
            //     color: Colors.transparent,
            //   ),
            // ),


                  //SEARCH BAR

            Padding(
              padding: const EdgeInsets.only(top: 130, left: 20, right: 20),
              child: Container(
                // margin: EdgeInsets.all(1) ,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          offset: Offset(0, 0),
                          blurRadius: 40),
                    ]),
                child: const ListTile(
                  leading: Icon(Icons.search, color: Colors.purpleAccent),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "          Search Here",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                   // margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(100, 22, 44, 33),
                    ),
                    child: Text("To Gether For A Better Future",  style: TextStyle(fontSize: 15, color: Colors.purpleAccent.shade700)),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}


          //LOWER PART

class LowerPart extends StatelessWidget {
  const LowerPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                 // opacity: 50,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}



             //Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 70);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}



