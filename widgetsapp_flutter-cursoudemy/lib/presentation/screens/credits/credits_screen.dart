import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  static const name = 'credit_screen';

  void openDialog( BuildContext context ) {

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Creditos', textAlign: TextAlign.center,),
        content: const Text('Curso Flutter UDEMY Fernando Herrera \nEstudiante: Miguel Angel Mogollon Soto'),
        actions: [
          Center(child: FilledButton( onPressed: ()=> context.pop(), child: const Text('Continuar'))),
        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creditos'),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar creditos'))
          ],
        ),
      ),
    );
  }
}