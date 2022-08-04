
import '../models/message_model.dart';
import '../screens/chat_room.dart';
import '../screens/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';

class AllChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,left: 20,right: 20),
            child: SizedBox(
                
                  height: 50,
                  child: TextField(
                  
                    cursorHeight: 25,
                    decoration: InputDecoration(
                      
                        suffixIcon: Icon(Icons.search),
                        fillColor: Colors.white54,
                        filled: true,
                        disabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white54)
                        ),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white54)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          
                        ),
                        hintText: 'Search Here...'),
                  ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child:  ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: allChats.length,
                  itemBuilder: (context, int index) {
                    final allChat = allChats[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundImage: AssetImage(allChat.avatar),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      CupertinoPageRoute(builder: (context) {
                                    return ChatRoom(user: allChat.sender);
                                  }));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      allChat.sender.name,
                                      style: MyTheme.heading2.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text(
                                      allChat.text,
                                      style: TextStyle(color: Color(0xff858585),fontSize: 14,fontWeight: FontWeight.w400)
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                    Text(
                                    allChat.time,
                                    style: MyTheme.bodyTextTime,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  allChat.unreadCount == 0
                                      ?
                                       CircleAvatar(
                                          radius: 8,
                                          backgroundColor: MyTheme.kUnreadChatBG,
                                          child: Text(
                                            allChat.unreadCount.toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ):Text(""),
                                  
                                 
                                 
                                ], 
                              ),
                              
                            ],
                          )),
                    );
                  }),
            
          )
        ],
      ),
    );
  }
}
