import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/utilities/bloc_counter/bloc_counter_two.dart';

class DemoScreenTwo extends StatelessWidget {
  const DemoScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times: '),
          BlocBuilder<BlocCounterTwo, CounterStateTwo>(
            builder: (context, state) {
              return state.counterValueTwo
                  ? Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromRGBO(72, 74, 126, 1),
                    )
                  : Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context
                      .read<BlocCounterTwo>()
                      .add(CounterIncrementPressedTwo());
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  context
                      .read<BlocCounterTwo>()
                      .add(CounterDecrementPressedTwo());
                },
                child: const Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
