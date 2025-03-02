import 'package:bloc_provider/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              heroTag: 'uniqueTag2',
              onPressed: () {
                counterBloc.add(CounterIncremented());
              },
              child: Icon(Icons.add),
            ),

            FloatingActionButton(
              heroTag: 'uniqueTag3',
              onPressed: () {
                counterBloc.add(CounterDecremented());
              },
              child: Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
