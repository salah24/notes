import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: addNoteForm(),
    );
  }
}

class addNoteForm extends StatelessWidget {
  const addNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 50),
        CustomAppbar(
          title: 'Edite Notes',
          icon: Icons.check,
        ),
        SizedBox(
          height: 50,
        ),
        CustomTextField(hint: 'Title'),
        SizedBox(
          height: 24,
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        )
      ],
    );
  }
}
