import 'package:mobx/mobx.dart';
part 'counter_controller.g.dart';

class CounterController = _CounterControllerBase with _$CounterController;

abstract class _CounterControllerBase with Store {
  @observable
  int _count = 0;

  int get count => _count;

  @action
  void increment() {
    _count++;
  }
}
