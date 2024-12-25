// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesModel on NotesModelBase, Store {
  late final _$_notesAtom =
      Atom(name: 'NotesModelBase._notes', context: context);

  @override
  ObservableList<String> get _notes {
    _$_notesAtom.reportRead();
    return super._notes;
  }

  @override
  set _notes(ObservableList<String> value) {
    _$_notesAtom.reportWrite(value, super._notes, () {
      super._notes = value;
    });
  }

  late final _$NotesModelBaseActionController =
      ActionController(name: 'NotesModelBase', context: context);

  @override
  void addNote(String note) {
    final _$actionInfo = _$NotesModelBaseActionController.startAction(
        name: 'NotesModelBase.addNote');
    try {
      return super.addNote(note);
    } finally {
      _$NotesModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeNote(int i) {
    final _$actionInfo = _$NotesModelBaseActionController.startAction(
        name: 'NotesModelBase.removeNote');
    try {
      return super.removeNote(i);
    } finally {
      _$NotesModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
