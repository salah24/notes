import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListeView extends StatelessWidget {
  const NotesListeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        );
      },
    );
  }
}
