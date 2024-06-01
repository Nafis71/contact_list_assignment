import 'package:contact_list_assignment/utils/colors.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final Function deleteItem;

  const AppAlertDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.deleteItem});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      surfaceTintColor: whiteColor,
      backgroundColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        content,
        style: const TextStyle(fontSize: 15),
      ),
      contentPadding: const EdgeInsets.all(25.00),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.no_sim_outlined,
            color: blueColor,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {
            deleteItem();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.delete_outlined,
            color: blueColor,
            size: 28,
          ),
        ),
      ],
    );
  }
}
