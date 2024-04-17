import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('¿Estas seguro?'),
          content: const Text(
              'Non officia incididunt eu deserunt. Aliquip culpa velit quis ullamco dolore elit aute et. Duis non duis sunt nulla. Do aliquip ex ut velit enim exercitation.'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Lorem elit qui deserunt nostrud aute aute eu consequat incididunt. Deserunt sunt nostrud ea exercitation magna eiusmod proident tempor. In mollit dolore amet elit minim veniam quis do dolore nisi. Ad cupidatat et minim laboris velit veniam adipisicing ipsum aliquip excepteur dolore incididunt. Eu duis fugiat fugiat excepteur consequat dolor anim culpa proident. Cillum officia excepteur velit minim adipisicing aliquip sit culpa. Nisi consequat dolor voluptate laborum in deserunt laborum culpa commodo.')
                  ],
                );
              },
              child: const Text('Licensias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo')),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
