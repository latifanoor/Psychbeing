/*import 'package:flutter/material.dart';
import 'package:psychbeing_app/screens/doctorprofil.dart';
import 'package:psychbeing_app/screens/groupspace.dart';

class Groupchats extends StatelessWidget {
  const Groupchats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        title: Text("Group Chat"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image9.jpg"),
            ),
            title: Text("Childhood Trauma"),
            subtitle: Text("How are you feeling"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("11:44"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image9.jpg"),
            ),
            title: Text("Relationship"),
            subtitle: Text("Lets take about today"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("11:44"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image3.jpg"),
            ),
            title: Text("My Thougths"),
            subtitle: Text("Take it easy"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("00:44"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image4.jpg"),
            ),
            title: Text("Family Trauma"),
            subtitle: Text("You are not to be blamed"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("00:44"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image5.jpg"),
            ),
            title: Text("My Anxiaty "),
            subtitle: Text("Take a deep breath"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("7:20"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image1.jpg"),
            ),
            title: Text("Social Media"),
            subtitle: Text("You can't control what they say"),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "9",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("9:25"),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Groupspace(),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/image4.jpg"),
            ),
            title: Text("Love and Care"),
            subtitle: Text(""),
            trailing: Column(
              children: [
                Container(
                  width: 20,
                  alignment: Alignment.center,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 220, 57, 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 2),
                Text("00:44"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/



//Future Updates
//THE GROUPSPACE CODES
/*import 'package:flutter/material.dart';

class Groupspace extends StatelessWidget {
  const Groupspace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 220, 57, 1),
        title: Text("Group Chat"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
  )*/


//WILL ADD IN THE NEWSFEED
/* if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Groupchats()),
            );
          } else if (value == 1) {
            Get.to(() => Groupchats());
          }*/