import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardLayout extends StatelessWidget {
  Widget child;
  DashBoardLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            SizedBox(
              width: 20,
            ),
            TextButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  context.go('/details');
                },
                child: const Text(
                  'details',
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  context.go('/tablero');
                },
                child: const Text(
                  'tablero',
                  style: TextStyle(color: Colors.white),
                )),
            Expanded(
              child: Container(),
            ),
            TextButton(
                onPressed: () {
                  context.go('/login');
                },
                child: const Text(
                  'login',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: child);

    ;
  }
}
