import 'package:flutter/material.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/chat/him_message_bubble.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_cursoudemy/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('lib/img/alespf.png'),
          ),
        ),
        title: const Text('Señor ales'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatefulWidget {
  @override
  __ChatViewState createState() => __ChatViewState();
}

class __ChatViewState extends State<_ChatView> {
  final TextEditingController _textController = TextEditingController();
  String myMessage = ''; // Agregamos una variable para almacenar el mensaje de HimMessageBubble
  String himMessage = '';
  int messageCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messageCount,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? HimMessageBubble(text:himMessage)  // Usamos himMessage como texto en HimMessageBubble
                      : MyMessageBubble(text: myMessage);
                },
              ),
            ),
            MessageFieldBox(
              textController: _textController,
              onSendMessage: (message) {
                setState(() {
                  myMessage = message;
                  messageCount +=1; // Actualizamos el mensaje de HimMessageBubble
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}