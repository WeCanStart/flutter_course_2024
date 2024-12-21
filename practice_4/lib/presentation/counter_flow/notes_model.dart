import 'dart:core';
import 'package:mobx/mobx.dart';

part 'notes_model.g.dart';

class NotesModel = NotesModelBase with _$NotesModel;

abstract class NotesModelBase with Store {
  @observable
  List<String> _notes = [];

  NotesModelBase({List<String>? notes}) : _notes = notes ?? [];

  List<String> get notes => _notes;

  @action
  void addNote(String note) {
    _notes.add(note);
  }

  @action
  void removeNote(int i) {
    if (0 <= i && i < _notes.length) {
      _notes.removeAt(i);
    }
  }
}