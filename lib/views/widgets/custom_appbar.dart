import 'package:flutter/material.dart';

import 'custom_serch_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
