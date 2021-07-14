// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterController on _CounterControllerBase, Store {
  final _$_countAtom = Atom(name: '_CounterControllerBase._count');

  @override
  int get _count {
    _$_countAtom.reportRead();
    return super._count;
  }

  @override
  set _count(int value) {
    _$_countAtom.reportWrite(value, super._count, () {
      super._count = value;
    });
  }

  final _$_CounterControllerBaseActionController =
      ActionController(name: '_CounterControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CounterControllerBaseActionController.startAction(
        name: '_CounterControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
