import 'package:flutter/material.dart';
import 'conversation.dart';
import 'users.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Conversation chat = chats[index];
              return GestureDetector(
                onLongPress: () {
                  showDialog(context: context,child:
                  new AlertDialog(
                    title: new Text("Do you want to delete the chat? "),
                    content: new ButtonBar(children: <Widget>[FlatButton(onPressed: (){},
                      child: Text('Delete'),
                      hoverColor:Colors.white,
                      splashColor: Colors.red,
                      color: Theme.of(context).primaryColor,
                    ),
                      FlatButton(onPressed: () {Navigator.of(context).pushReplacementNamed('/home');},

                        child: Text('cancel'),
                        hoverColor:Colors.white,
                        splashColor: Colors.red,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                    ),
                  ));
                },
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: chat.sender,
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 0.0, bottom: 0.0, right: 0.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  decoration: BoxDecoration(
                    color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                chat.sender.name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            chat.time,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          chat.unread
                              ? Container(
                            width: 23.5,
                            height: 23.5,
                            decoration: BoxDecoration(

                              color: Colors.red,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'NEW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                              : Text(''),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      );
  }
}

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Conversation message, bool isMe) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 80.0,
        right: 00.0,
      )
          : EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left:05.0,
      ),
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
      width: MediaQuery.of(context).size.width * 0.87,
      decoration: BoxDecoration(
        color: isMe ? Colors.teal : Colors.tealAccent,
        borderRadius: isMe
            ? BorderRadius.only(
            topLeft: Radius.circular(0.0),
            bottomLeft: Radius.circular(0.0),
            topRight: Radius.circular(00.0)
        )
            : BorderRadius.only(
            topRight: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(00.0)
        ),
      ),
      child: Stack(
          children: <Widget>[
            Column(
                children: <Widget>[
                  Container(child: ListTile(leading:CircleAvatar(radius: 25.0,
                      backgroundImage: AssetImage(message.sender.imageUrl)),
                    trailing: Text(message.time,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ),
                  ),
                  Container(child: ListTile( subtitle: Text(
                    message.text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),),)
                ])
          ]
      ),




    );


    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,

        IconButton(
          icon: Icon(Icons.more_vert),
          iconSize: 30.0,
          onPressed: () {showDialog(context: context,child:
          new AlertDialog(
              title: new Text("Do you want to unsend the chat? "),
            content: new ButtonBar(children: <Widget>[FlatButton(onPressed: (){},
              child: Text('Delete'),
              hoverColor:Colors.white,
              splashColor: Colors.teal,
              color: Theme.of(context).primaryColor,
              ),
                FlatButton(onPressed: () {Navigator.of(context).pushReplacementNamed('/home');},

                  child: Text('cancel'),
                  hoverColor:Colors.white,
                  splashColor: Colors.white,
                  color: Colors.white,
            ),
            ],
            ),
          ),);},

        )
      ],
    );

  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[

          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.teal,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),

        ),


        elevation: 0.0,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: ClipRRect(


                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(00.0),
                    topRight: Radius.circular(00.0),

                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 0.0),
                    itemCount: messages.length,


                    itemBuilder: (BuildContext context, int index) {
                      final Conversation message = messages[index];
                      final bool isMe = message.sender.user_id == currentUser.user_id;
                      return _buildMessage(message, isMe);

                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}

