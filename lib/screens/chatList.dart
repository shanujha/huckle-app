import 'package:flutter/material.dart';
import 'package:huckle/components/chatItem.dart';
import 'package:huckle/const/colorCodes.dart';
import 'package:huckle/const/textStyle.dart';

class ChatList extends StatefulWidget {
  ChatList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: kTextStyleBold),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_2_outlined,
              color: kColorBlue,
            ),
            onPressed: () => {},
          )
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => ChatItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kColorGreen,
        onPressed: () => {},
        tooltip: 'New Huckle',
        child: Icon(
          Icons.chat,
          color: kColorWhiteSecondary,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
