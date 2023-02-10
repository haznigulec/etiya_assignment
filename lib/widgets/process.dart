import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Process extends StatelessWidget {
  const Process({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitCubeGrid(
      color: Colors.orange,
      size: 80,
    );
  }
}
