import 'package:flutter/material.dart';
import '../app_theme.dart';

Container buildChatComposer() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.white,
    height: 100,
    child: Row(
      children: [
         
        Expanded(
          child:
           Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            
            child: Row(
              children: [
               
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Message',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
                        Icon(Icons.send,color: Colors.pink[50],)

              ],
            ),
          ),
        ),
       
       
      ],
    ),
  );
}
