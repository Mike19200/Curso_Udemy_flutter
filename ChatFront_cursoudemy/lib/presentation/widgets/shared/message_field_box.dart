import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({Key? key, required this.textController, required this.onSendMessage}) : super(key: key);

  final TextEditingController textController;
  final Function(String) onSendMessage;

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final imputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      hintText: 'insert message',
      hintStyle: TextStyle(fontWeight: FontWeight.w300),
      alignLabelWithHint: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.text;
          print('$textValue');
          textController.clear();
          focusNode.requestFocus();
          onSendMessage(textValue); // Llama a la función con el valor del texto
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: imputDecoration,
        onFieldSubmitted: (value) {
          print('Submit value $value');
          textController.clear();
          focusNode.requestFocus();
          onSendMessage(value); // Llama a la función con el valor del texto
        },
      ),
    );
  }
}