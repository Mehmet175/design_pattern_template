/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : design_pattern_template 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 29.10.2023 14:36
Notes        : 

*/

import 'dart:async';

import 'package:design_pattern_template/memento/utils/generic_care_taker.dart';
import 'package:design_pattern_template/memento/utils/input.dart';
import 'package:flutter/cupertino.dart';

class MementoPageController {
  MementoPageController();

  void init() {
    tecNote.addListener(() {
      input.note = tecNote.text;
    });
  }

  /// Kaydedilen inputları tutan terbiyecimiz.
  final GenericCareTaker<Input> inputManager = GenericCareTaker<Input>();

  /// Gösterilen ve anlık güncellenen data.
  Input input = Input("");

  /// Inputun yeni bir instancesini oluşturur ve
  /// momento listesine kaydeder.
  void save() {
    inputManager.listMemento.add(input.save());
  }

  final TextEditingController tecNote = TextEditingController();

  /// Bulunduğumuz adımın indexini tutar.
  int? stepIndex;

  /// Önceki adıma götürür.
  void prev() {
    if (inputManager.listMemento.isEmpty) return;
    stepIndex ??= inputManager.listMemento.length;
    if (stepIndex! <= 0) return;
    stepIndex = stepIndex! - 1;
    input.restore(inputManager.listMemento.elementAt(stepIndex!));
    tecNote.text = input.note;
  }

  ///Sonraki adıma götürür.
  void next() {
    if (inputManager.listMemento.isEmpty) return;
    if (stepIndex == null) return;
    if (stepIndex == inputManager.listMemento.length - 1) return;
    stepIndex = stepIndex! + 1;
    input.restore(inputManager.listMemento.elementAt(stepIndex! + 1));
    tecNote.text = input.note;
  }
}
