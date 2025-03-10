import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  final String name;
  final String? day;

  const SampleWidget({super.key, required this.name, this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Halo, Saya $name"), Text("Ini pertemuan ke-$day")],
    );
  }
}
