// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllerclass.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Control1 on _Control1, Store {
  late final _$observeListAtom =
      Atom(name: '_Control1.observeList', context: context);

  @override
  ObservableList<NewClass1>? get observeList {
    _$observeListAtom.reportRead();
    return super.observeList;
  }

  @override
  set observeList(ObservableList<NewClass1>? value) {
    _$observeListAtom.reportWrite(value, super.observeList, () {
      super.observeList = value;
    });
  }

  late final _$loadjsonAsyncAction =
      AsyncAction('_Control1.loadjson', context: context);

  @override
  Future<List<NewClass1>?> loadjson() {
    return _$loadjsonAsyncAction.run(() => super.loadjson());
  }

  @override
  String toString() {
    return '''
observeList: ${observeList}
    ''';
  }
}
