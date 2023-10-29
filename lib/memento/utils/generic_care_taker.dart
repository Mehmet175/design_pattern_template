/*

© 2023 B1 Digital

User         : mehmetalicubukcu
Project Name : design_pattern_template 
Name         : Mehmet Ali ÇUBUKÇU
Date         : 29.10.2023 14:41
Notes        : 

*/


import 'package:design_pattern_template/memento/utils/generic_memento.dart';

class GenericCareTaker<T> {
  List<GenericMemento<T>> listMemento = [];

  /// Geri alma ve kaydetme işlemlerinin üstünden döneceği memento nesnemizi
  /// tutan dadımız.
  GenericCareTaker();
}
