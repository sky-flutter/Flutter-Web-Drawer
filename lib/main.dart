import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int selectedPosition = 0;
  bool isDrawerOpen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: buildDrawer(),
        body: Container(
          child: Center(
            child: Text("Hello Web!!!"),
          ),
        ),
      ),
    );
  }

  headerMenu() {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.all(Radius.circular(4))),
          ),
          Expanded(
            flex: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "HOME",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "PRODUCT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "BLOG",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "ABOUT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "CONTACT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
                  padding: EdgeInsets.all(6),
                  child: Text(
                    "LOGIN / SIGNUP",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "HelveticaNeueBold",
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  bannerImage() {
    return Image.asset("assets/banner1.jpg");
  }

  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.dashboard,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "HOME",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            splashColor: Colors.blue,
            hoverColor: Colors.blueGrey,
            onTap: () {},
          ),
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.vpn_key,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "PRODUCT",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            splashColor: Colors.blue,
            hoverColor: Colors.blueGrey,
            onTap: () {},
          ),
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.supervisor_account,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "BLOG",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            hoverColor: Colors.blueGrey,
            splashColor: Colors.blue,
            onTap: () {},
          ),
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "ABOUT",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            hoverColor: Colors.blueGrey,
            splashColor: Colors.blue,
            onTap: () {},
          ),
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.supervisor_account,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "CONTACT",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            hoverColor: Colors.blueGrey,
            splashColor: Colors.blue,
            onTap: () {},
          ),
          Container(
            height: 1,
            color: Colors.grey.shade200,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "LOGIN / SLIGNUP",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
            ),
            hoverColor: Colors.blueGrey,
            splashColor: Colors.blue,
            onTap: () {},
          ),
        ],
      ),
    );
  }

//Create UI For mobile devices
}
