import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBotoomSheet extends StatelessWidget {
  const AddNoteBotoomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}