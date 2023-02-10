import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.deepPurple,
      centerTitle: false,
      elevation: 0,
      title: Align(alignment: Alignment.centerLeft, child: Image.asset("lib/assets/etiya_logo.png", width: 180, height: 80, fit: BoxFit.fitWidth)),
    );
  }
}
