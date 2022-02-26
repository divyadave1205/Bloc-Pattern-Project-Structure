import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_app/utilities/bloc_counter/bloca.dart';
import 'package:provider_app/utilities/route/route_utilities.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times: '),
          BlocBuilder<BlocCounter, CounterState>(
            builder: (context, state) {
              return state.counterValue
                  ? Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromRGBO(79, 74, 170, 1),
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
                  context.read<BlocCounter>().add(CounterDecrementPressed());
                },
                child: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<BlocCounter>().add(CounterIncrementPressed());
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteUtilities.demoscreenTwo);
                // Navigator.pushReplacementNamed(
                //     context, RouteUtilities.demoscreenTwo);
              },
              child: const Text('Next'))
        ],
      ),
    );
  }
}
