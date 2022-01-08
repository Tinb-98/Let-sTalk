import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.purpleAccent,

  ),
      body: Column(
        children: [
          SizedBox(height: 600,width: 1000),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.search, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              primary: Colors.purpleAccent, // <-- Button color
              onPrimary: Colors.purpleAccent, // <-- Splash color
            ),
          )
        ],
    ),

    );
  }
}
