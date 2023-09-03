import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_prov/provider/counter/counter_view_model.dart';

class CounterPoroviderScreen extends StatelessWidget {
  const CounterPoroviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Porovider Screen'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'count =',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '${context.watch<CounterViewModel>().counter} ',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text('press'),
          onPressed: () {
            context.read<CounterViewModel>().decrement();
          }),
    );
  }
}
