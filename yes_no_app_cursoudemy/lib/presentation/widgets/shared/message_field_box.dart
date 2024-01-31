// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40));

    final imputDecoration = InputDecoration(
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          hintText: 'insert message',
          hintStyle: TextStyle(fontWeight: FontWeight.w300),
          alignLabelWithHint: true,
          suffixIcon: IconButton(icon: const Icon(Icons.send_outlined),
          onPressed: (){
           final textValue = textController.value.text;
           print('$textValue');
           textController.clear();
           focusNode.requestFocus();
          },
          ),
        );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTapOutside: (event){
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: imputDecoration,
        onFieldSubmitted: (value) {
          print('Submit value $value');
          textController.clear();
          focusNode.requestFocus();
        },
      ),
    );
  }
}