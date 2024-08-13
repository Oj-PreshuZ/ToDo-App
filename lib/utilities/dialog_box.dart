import 'package:flutter/material.dart';
import 'package:todo_appp1/utilities/my_buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  DialogBox({
    super.key,
    required this.onSave,
    required this.onCancel,
    required this.controller,
  });

  VoidCallback onSave;
  VoidCallback onCancel;
  // ignore: prefer_typing_uninitialized_variables
  final controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green,
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtons(text: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 15,
                ),
                MyButtons(text: 'Cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
