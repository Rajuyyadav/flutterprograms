// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logic_class.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LogicClassCode on _LogicClassCode, Store {
  late final _$listOfDataAtom =
      Atom(name: '_LogicClassCode.listOfData', context: context);

  @override
  ObservableList<SortDataJsonFile>? get listOfData {
    _$listOfDataAtom.reportRead();
    return super.listOfData;
  }

  @override
  set listOfData(ObservableList<SortDataJsonFile>? value) {
    _$listOfDataAtom.reportWrite(value, super.listOfData, () {
      super.listOfData = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: '_LogicClassCode.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$loadJsondataAsyncAction =
      AsyncAction('_LogicClassCode.loadJsondata', context: context);

  @override
  Future<List<SortDataJsonFile>?> loadJsondata() {
    return _$loadJsondataAsyncAction.run(() => super.loadJsondata());
  }

  late final _$_LogicClassCodeActionController =
      ActionController(name: '_LogicClassCode', context: context);

  @override
  void lowToHighPrice() {
    final _$actionInfo = _$_LogicClassCodeActionController.startAction(
        name: '_LogicClassCode.lowToHighPrice');
    try {
      return super.lowToHighPrice();
    } finally {
      _$_LogicClassCodeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void highToLowPrice() {
    final _$actionInfo = _$_LogicClassCodeActionController.startAction(
        name: '_LogicClassCode.highToLowPrice');
    try {
      return super.highToLowPrice();
    } finally {
      _$_LogicClassCodeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_LogicClassCodeActionController.startAction(
        name: '_LogicClassCode.refresh');
    try {
      return super.refresh();
    } finally {
      _$_LogicClassCodeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calll(int i) {
    final _$actionInfo = _$_LogicClassCodeActionController.startAction(
        name: '_LogicClassCode.calll');
    try {
      return super.calll(i);
    } finally {
      _$_LogicClassCodeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listOfData: ${listOfData},
selectedIndex: ${selectedIndex}
    ''';
  }
}
