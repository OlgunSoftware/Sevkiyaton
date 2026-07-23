import 'package:flutter/material.dart';

import 'services/counter_service.dart';
import 'viewmodels/counter_viewmodel.dart';
import 'views/home_view.dart';

void main() {
  final counterService = CounterService();
  final counterViewModel = CounterViewModel(counterService);

  runApp(MainApp(viewModel: counterViewModel));
}

class MainApp extends StatelessWidget {
  final CounterViewModel viewModel;

  const MainApp({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeView(viewModel: viewModel),
    );
  }
}
