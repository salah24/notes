import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

import '../../constans.dart';

class AddNoteBotoomSheet extends StatefulWidget {
  const AddNoteBotoomSheet({Key? key}) : super(key: key);

  @override
  State<AddNoteBotoomSheet> createState() => _AddNoteBotoomSheetState();
}

class _AddNoteBotoomSheetState extends State<AddNoteBotoomSheet> {
  String? title, subTitle;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hint: 'Title',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hint: 'Content',
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                onTap: (() {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                }),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
