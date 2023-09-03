import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_prov/provider/counter/counter_view_model.dart';
import 'package:state_manegment_prov/provider/counter/provider_counter_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPoroviderScreen(),
    );
  }
}
