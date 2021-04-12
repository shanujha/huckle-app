import 'package:flutter/material.dart';
import 'package:huckle/const/colorCodes.dart';
import 'package:huckle/const/textStyle.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kColorWhite,
      child: InkWell(
        onTap: () => {},
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 84.00,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1520810627419-35e362c5dc07?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                height: 84.00,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Natalie Wockniesky",
                        textAlign: TextAlign.left,
                        style: kChatTextStylePerson,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                      child: Text(
                        "yup, it was really hillarious an... ",
                        style: kChatTextStyleLastMessage,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  height: 84.00,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Text("07:58 PM", style: kChatTextStyleLastTime),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
