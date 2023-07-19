import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
   ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
  mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
         padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
  child: Container(

    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Color(0xFFE1E1E2),

    ),
    child: Text("Hi! What can i do for you,you can book an appointment directly",
      style: TextStyle(
        fontSize: 16,
       ),
      ),
     ),
    ),
   ),

        Container(
       alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 10,right: 2),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 20,top: 10,bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF7165D6)
                ),
                child: Text("Hello Doctor, Are you there?",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),

              ),
            ),
          ),
        ),
      ],
    );
  }
}
