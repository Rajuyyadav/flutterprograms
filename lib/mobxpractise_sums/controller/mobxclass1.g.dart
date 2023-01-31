// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobxclass1.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  late final _$countAtom = Atom(name: '_Counter.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$bAtom = Atom(name: '_Counter.b', context: context);

  @override
  String get b {
    _$bAtom.reportRead();
    return super.b;
  }

  @override
  set b(String value) {
    _$bAtom.reportWrite(value, super.b, () {
      super.b = value;
    });
  }

  late final _$_CounterActionController =
      ActionController(name: '_Counter', context: context);

  @override
  void call1() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.call1');
    try {
      return super.call1();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count},
b: ${b}
    ''';
  }
}
