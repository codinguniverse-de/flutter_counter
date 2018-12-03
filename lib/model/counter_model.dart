import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void increment() {
    _counter = counter + 1;
    notifyListeners();
  }

  void decrement() {
    _counter = counter - 1;
    notifyListeners();
  }

}