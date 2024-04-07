import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

var chat = [
  {
    'name': 'Abby Williams',
    'pic': 'assets/images/login.png',
    'msg': 'Hi sorry about earlier, was a bit busy',
    'time': '10:30 pm',
    'unread':2
  },
  {
    'name': 'Williams Anders',
    'pic': 'assets/images/login.png',
    'msg': 'Hey, whatsup bro',
    'time': '10:03 pm',
    'unread':1
  },
  {
    'name': 'Andy',
    'pic': 'assets/images/login.png',
    'msg': 'Got some crackers come quick and u can have them',
    'time': '08:30 pm',
  },
  {
    'name': 'Brunedette',
    'pic':'assets/images/login.png' ,
    'msg': 'Can u email the pic?',
    'time': '08:00 pm',
  },
  {
    'name': 'Mom',
    'pic': 'assets/images/login.png',
    'msg': 'Had dinner yet?',
    'time': '07:40 pm',
  },
  {
    'name': 'Dad',
    'pic': 'assets/images/login.png',
    'msg': 'Hey kid get a smoothie on ur way back',
    'time': '07:30 pm',
  },
  {
    'name': 'Cayne Don',
    'pic': 'assets/images/login.png',
    'msg': 'Thanks for the party😁',
    'time': '06:30 pm',
  },
  {
    'name': 'Hannah',
    'pic': 'assets/images/login.png',
    'msg': 'Meet me at 8 tomorrow',
    'time': '05:30 pm',
  },
  {
    'name': 'Abby Gale',
    'pic': 'assets/images/login.png',
    'msg': 'Party!!!!',
    'time': '04:30 pm'
  },
  {
    'name': 'Aby',
    'pic': 'assets/images/login.png',
    'msg': 'ok',
    'time': '04:04 pm'
  }
];

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 28,
              )),
        ],
        bottom: AppBar(
          backgroundColor: Color(0xff075e54),
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.camera_alt_rounded,
            color: Colors.white.withOpacity(0.5),
            size: 28,
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 115,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CHATS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "STATUS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CALLS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xff075e54),
            onPressed: () {},
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: List.generate(
              chat.length,
              (index) => Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('${chat[index]['pic']}'),
                      ),
                    trailing: _buildWidget(index),
                      title: Text("${chat[index]['name']}"),
                      subtitle: Text("${chat[index]['msg']}"),
                    ),
                  )),
        ),
      ),
    );
  }
  Widget _buildWidget(int index){
    if(chat[index]['unread']==null){
      return Text("${chat[index]['time']}");
    }
    else{ return Wrap(
      direction: Axis.vertical,
        children:[
                           Text("${chat[index]['time']}"),
                           
                           CircleAvatar(
                            minRadius:6 ,
                            maxRadius: 14,
                            backgroundColor: Colors.green,
                            child: Text("${chat[index]['unread']}",style: TextStyle(color: Colors.white),),
                           )
                           ]);     }
  }

}
