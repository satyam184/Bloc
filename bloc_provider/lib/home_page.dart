import 'package:bloc_provider/bloc/counter_bloc.dart';
import 'package:bloc_provider/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, counter) {
                return Text('$counter');
              },
            ),
            FloatingActionButton(
              heroTag: 'uniqueTag1',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const IncDecPage()),
                );
              },
              child: const Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
