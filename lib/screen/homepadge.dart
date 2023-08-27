import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
class HomePadge extends StatefulWidget {
  const HomePadge({Key? key}) : super(key: key);

  @override
  State<HomePadge> createState() => _HomePadgeState();
}

class _HomePadgeState extends State<HomePadge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CSCPicker(),
    );
  }
}
