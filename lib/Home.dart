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
        extendBodyBehindAppBar: true,
        extendBody: true,
        //App Bar
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

        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("AppMaking.co"),
                accountEmail: Text("sundar@appmaking.co"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://startblokriekerhaven.nl/wp-content/uploads/2021/11/A5987B5A-65E6-4F39-8A8C-D73685F1FEF6_1_201_a-1536x1536.jpeg"),

                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://startblokriekerhaven.nl/wp-content/uploads/2017/01/D4J1561-1024x682.jpg",
                    ),
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
                  color: Colors.purpleAccent.shade700,
                  size: 35,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.purpleAccent.shade700,
                      fontSize: 23,
                      fontFamily: 'mochiy'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box,
                    color: Colors.purpleAccent.shade700, size: 35),
                title: Text(
                  "About",
                  style: TextStyle(
                      color: Colors.purpleAccent.shade700,
                      fontSize: 23,
                      fontFamily: 'mochiy'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.grid_3x3_outlined,
                    color: Colors.purpleAccent.shade700, size: 35),
                title: Text(
                  "Products",
                  style: TextStyle(
                      color: Colors.purpleAccent.shade700,
                      fontSize: 23,
                      fontFamily: 'mochiy'),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail,
                    color: Colors.purpleAccent.shade700, size: 35),
                title: Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.purpleAccent.shade700,
                      fontSize: 23,
                      fontFamily: 'mochiy'),
                ),
                onTap: () {},
              )
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          //Floating action button on Scaffold
          onPressed: () {
            //code to execute on button press
          },
          child: Icon(
            Icons.question_answer,
            size: 40,
          ), //icon inside button
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floating action button position to center

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
              padding: const EdgeInsets.fromLTRB(0, 330, 0, 0),
              child: LowerPart(),
            ),
            UpperPart(),
          ],
        ),
      ),
    );
  }
}

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

            //serach bar
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
                          offset: Offset(1, 1),
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
          ],
        ),
      ],
    );
  }
}

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
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                  opacity: 50,
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

// drawer: Drawer(
// // Add a ListView to the drawer. This ensures the user can scroll
// // through the options in the drawer if there isn't enough vertical
// // space to fit everything.
// child: ListView(
// // Important: Remove any padding from the ListView.
// padding: EdgeInsets.zero,
// children: [
// const DrawerHeader(
// decoration: BoxDecoration(
// color: Colors.blue,
// ),
// child: Text('Drawer Header'),
// ),
// ListTile(
// title: const Text('Item 1'),
// onTap: () {
// // Update the state of the app
// // ...
// // Then close the drawer
// Navigator.pop(context);
// },
// ),
// ListTile(
// title: const Text('Item 2'),
// onTap: () {
// // Update the state of the app
// // ...
// // Then close the drawer
// Navigator.pop(context);
// },
// ),
// ],
// ),
// ),

//     drawer: Drawer(
//       child: ListView(
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text("AppMaking.co"),
//             accountEmail: Text("sundar@appmaking.co"),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: NetworkImage(
//                   "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
//             ),
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage(
//                   "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
//                 ),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             otherAccountsPictures: [
//               CircleAvatar(
//                 backgroundColor: Colors.white,
//                 backgroundImage: NetworkImage(
//                     "https://randomuser.me/api/portraits/women/74.jpg"),
//               ),
//               CircleAvatar(
//                 backgroundColor: Colors.white,
//                 backgroundImage: NetworkImage(
//                     "https://randomuser.me/api/portraits/men/47.jpg"),
//               ),
//             ],
//           ),
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text("Home"),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.account_box),
//             title: Text("About"),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.grid_3x3_outlined),
//             title: Text("Products"),
//             onTap: () {},
//           ),
//           ListTile(
//             leading: Icon(Icons.contact_mail),
//             title: Text("Contact"),
//             onTap: () {},
//           )
//         ],
//       ),
//     ),
//   );
// }
// In a Flutter drawer, you can also add a user profile with a name, email. for that you need to use UserAccountsDrawerHeader(). It requires few properties like name, email, profile image. if you want you can pass other account images also. The output of the above example looks like this
//
// flutter-drawer-example-6
//
//
//
// Documentation:
//
// https://api.flutter.dev/flutter/material/Drawer-class.html
// CategoriesUncategorized
// Links
// Flutter Course
// Flutter Training
// © 2022 App Making AcademyCourses Blog Contact Terms Privacy Refund Policy
