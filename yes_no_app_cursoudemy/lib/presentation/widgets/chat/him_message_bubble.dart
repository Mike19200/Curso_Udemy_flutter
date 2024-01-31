import 'package:flutter/material.dart';

class HimMessageBubble extends StatelessWidget {
  const HimMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Occaecat voluptate tempor esse eiusmod deserunt cupidatat consectetur dolore enim. Sit commodo magna dolor nulla. Proident minim culpa dolore do eiusmod exercitation nulla deserunt. Eu consectetur commodo Lorem ea sunt ex consequat est culpa culpa cupidatat veniam id. Ullamco anim deserunt velit sunt eiusmod duis quis irure sint aliqua eiusmod velit ullamco. Eu ea occaecat sint esse Lorem nostrud laborum esse dolore sint quis magna est amet. Velit amet magna aliquip minim.', style: TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(height: 10),
        _ImageBubble(),
        const SizedBox(height: 10)


        

        //To do: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset('lib/img/Ballistergif.gif',
      width: 250,
      height: 200,
      fit: BoxFit.fill,
      ),);
  }
}