import 'package:flutter/material.dart';

import 'edite_note_view.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteViewBody(),
    );
  }
}
