/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : design_pattern_template 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 29.10.2023 14:26
Notes        : 

*/

import 'package:design_pattern_template/memento/memento_page_controller.dart';
import 'package:flutter/material.dart';

final MementoPageController controller = MementoPageController();

class MementoPage extends StatefulWidget {
  const MementoPage({super.key});

  @override
  State<MementoPage> createState() => _MementoPageState();
}

class _MementoPageState extends State<MementoPage> {
  @override
  void initState() {
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: const _Input(),
    );
  }
}

class _Input extends StatelessWidget {
  const _Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller.tecNote,
        maxLines: 10,
        minLines: 10,
        decoration: const InputDecoration(
          labelText: "Input",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class _AppBar extends AppBar {
  _AppBar({super.key});

  @override
  Widget? get title => const Text("Memento");

  @override
  TextStyle? get titleTextStyle => const TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black54,
        fontSize: 24,
      );

  @override
  bool? get centerTitle => false;

  @override
  List<Widget>? get actions => [
        IconButton(
          onPressed: () {
            controller.prev();
          },
          icon: const Icon(
            Icons.turn_slight_left_outlined,
          ),
        ),
        IconButton(
          onPressed: () {
            controller.save();
          },
          icon: const Icon(
            Icons.save,
          ),
        ),
        IconButton(
          onPressed: () {
            controller.next();
          },
          icon: const Icon(
            Icons.turn_slight_right_outlined,
          ),
        ),
      ];
}
