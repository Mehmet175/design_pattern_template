/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : design_pattern_template 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 29.10.2023 14:43
Notes        : 

*/

import 'package:design_pattern_template/memento/utils/generic_memento.dart';

class Input {
  String note;
  Input(this.note);

  ///  Yeni bir instance olarak GenericMemento verir.
  GenericMemento<Input> save() {
    return GenericMemento(Input(note));
  }

  /// Verilen memento nesnesinin state'ini kendine atar.
  void restore(GenericMemento<Input> memento) {
    note = memento.state.note;
  }

}
