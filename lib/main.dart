import 'package:flutter/material.dart';
import 'package:flutter_counter/model/counter_model.dart';
import 'package:flutter_counter/pages/home_page.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: CounterModel(),
      child: MaterialApp(
        title: 'CounterAppFlutter',
        home: HomePage(),
      )
    );
  }
}
