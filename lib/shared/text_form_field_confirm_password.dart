import 'package:flutter/material.dart';

class TextFormFieldConfirmPassword extends StatelessWidget {
  bool isConfirm;
  TextEditingController controller;
  TextEditingController secondController;

  TextFormFieldConfirmPassword({
    Key? key,
    this.isConfirm = true,
    required this.controller,
    required this.secondController,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.lock_outline),
        hintText: isConfirm ? "Confirm Password" : "Password",
        filled: true,
        fillColor: Colors.white,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is mandatory";
        } else if (controller.text != secondController.text) {
          return "The passwords don't match";
        }
        return null;
      },
    );
  }
}
