import 'package:flutter/material.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/chat/him_message_bubble.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('lib/img/alespf.png')
          ),
        ),
        title: const Text('Señor ales'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Expanded(child: 
             ListView.builder(
              itemCount: 3,
              itemBuilder:(context, index) {
               return (index % 2 == 0)
               ? const HimMessageBubble()
               : const MyMessageBubble();
             })),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}