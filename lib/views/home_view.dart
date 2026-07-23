import 'package:flutter/material.dart';

import '../viewmodels/counter_viewmodel.dart';

class HomeView extends StatelessWidget {
  final CounterViewModel viewModel;

  const HomeView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: viewModel,
          builder: (context, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Counter value:', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 8),
                Text(
                  viewModel.count.toString(),
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: viewModel.increment,
                  child: const Text('Increment'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
