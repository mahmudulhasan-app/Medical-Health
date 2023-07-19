import 'package:flutter/material.dart';

import 'Chat_Screen.dart';
class MessagesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
List imgs =[
  'doctor1.jpg',
  'doctor2.jpg',
  'doctor3.jpg',
  'doctor4.jpg',
  'doctor1.jpg',
  'doctor2.jpg',


];
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Messages",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          SizedBox(height: 30),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
                Icon(
                  Icons.search,
                  color: Color(0xFF7165D6),
                ),
            ],
            ),
          ),
          ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Active Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          SizedBox(height: 90,
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
    itemCount: 6,
    itemBuilder: (context, index) {
      return Stack(
        children: [
          Center(
            child:  Container(
              padding:  EdgeInsets.all(14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "images/${imgs[index]}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
         Container(
           margin: EdgeInsets.all(2),
           padding: EdgeInsets.all(3),
           height: 30,
           width: 20,
           decoration: BoxDecoration(
             color: Colors.white,
             shape: BoxShape.circle,
             boxShadow: [
               BoxShadow(
                 blurRadius: 50,
                 spreadRadius: 4,
               )
             ],
           ),
           child:  Container(
             decoration: BoxDecoration(
                 color: Colors.green,
                 shape: BoxShape.circle
             ),
           ),
         ),
        ],
      );
       }
      ),
     ),
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Recent Chat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
                shrinkWrap: true,
                itemBuilder:(context,index){
   return ListTile(
minVerticalPadding: 25,
       onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
       },
       leading: CircleAvatar(
         radius: 30,
       backgroundImage: AssetImage(
           "images/${imgs[index]}"
       )
       ),
       title: Text(
         "Dr.Doctor Name",
         style: TextStyle(
           fontSize: 18,
           fontWeight: FontWeight.bold,
         ),
       ),
       subtitle: Text(
         "Hi!Doctor are you there?",
         style: TextStyle(
             color: Colors.black54,
           fontSize: 16,
         ),
       ),
       trailing: Text(
           "1:00PM",
         style: TextStyle(
           fontSize: 15,
           color: Colors.black54,
         ),
       ),
     );

                }
                )
    ],
   ),
  );
 }
}