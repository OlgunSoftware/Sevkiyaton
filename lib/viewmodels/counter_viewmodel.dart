import 'package:flutter/foundation.dart';

import '../models/counter_model.dart';
import '../services/counter_service.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterService _service;
  CounterModel _counter;

  CounterViewModel(this._service) : _counter = _service.createCounter();

  int get count => _counter.value;

  void increment() {
    _counter = CounterModel(_counter.value + 1);
    notifyListeners();
  }
}
