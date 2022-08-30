import 'package:flutter/material.dart';

class ElevatedButtonApp extends StatelessWidget {
  final Widget route;
  final String title;
  final formKey = GlobalKey<FormState>();

   ElevatedButtonApp({
    Key? key,
    required this.route,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => route),
        );
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.white, padding: const EdgeInsets.all(15), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
      child: Text(
        title,
        style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
      ),
    );
  }
}
