import 'package:app/Menu.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index){
          setState(() {

          });
        myIndex=index;
        },
       currentIndex: myIndex,
        items:const[
        BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
        backgroundColor: Colors.black),

   BottomNavigationBarItem(
       icon: Icon(Icons.search),
       label: 'Search',
   backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon:Icon(Icons.add),
            label:'Add',
        backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: 'Notification',
        backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Profile',
        backgroundColor: Colors.black),
      ],
      ),
appBar: new AppBar(
  backgroundColor: Colors.blue,
  title: new Center(
    child: new Text("Translator"),

  ),
),
drawer: Drawer(
  child: new ListView(
    children: <Widget>[
      new UserAccountsDrawerHeader(
          accountName:new Text("M2K"), 
          accountEmail:new Text("Translator"),
      currentAccountPicture: new CircleAvatar(),),
 new ListTile(
  title: new Text("Menu"),

)
      ,ListTile(
        title: Text("Languages"),
      ),
      ListTile(
        title: Text("Settings"),
      ),
      ListTile(
        title: Text("Exit"),
      )

    ],
  ),
),

      );

  }
}
