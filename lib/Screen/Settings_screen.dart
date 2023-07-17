import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child:   Padding(
    padding: EdgeInsets.only(top: 50 ,right: 20,left: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Settings",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500
      ),
      ),
      SizedBox(height: 30),
      ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("images/doctor1.jpg"),
        ),
        title: Text(
          "Dr.Hasan",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        subtitle: Text("Profile"),
      ),
      Divider(height: 50,),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
        CupertinoIcons.person,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      SizedBox(height: 20),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.notifications_none_outlined,
            color: Colors.deepPurple,
            size: 30,
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      SizedBox(height: 20),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.indigo.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.privacy_tip_outlined,
            color: Colors.indigo,
            size: 30,
          ),
        ),
        title: Text(
          "Privacy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      SizedBox(height: 20),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.greenAccent.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.settings_suggest_outlined,
            color: Colors.green,
            size: 30,
          ),
        ),
        title: Text(
          "Privacy",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      SizedBox(height: 20),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orangeAccent.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.info_outline_rounded,
            color: Colors.orangeAccent,
            size: 30,
          ),
        ),
        title: Text(
          "About Us",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
      Divider(height: 40,),
      SizedBox(height: 20),
      ListTile(
        onTap: (){},
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.redAccent.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.logout,
            color: Colors.red,
            size: 30,
          ),
        ),
        title: Text(
          "Logout",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
  
    ],
  ),
  ),
);
  }

}