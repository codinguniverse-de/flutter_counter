import 'package:flutter/material.dart';
import 'package:flutter_counter/common/custom_button.dart';
import 'package:flutter_counter/model/counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp'),
      ),
      body: ScopedModelDescendant<CounterModel>(
        builder: (context, widget, model) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(
                  content: '-',
                  onPressed: model.decrement,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    model.counter.toString(),
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                CustomButton(
                  content: '+',
                  onPressed: model.increment,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
