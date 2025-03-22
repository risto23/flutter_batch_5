import 'package:flutter/material.dart';
import 'package:flutter_batch_5/pages/day6/bloc/counter_cubit.dart';
import 'package:flutter_batch_5/pages/day6/bloc/counter_state.dart';
import 'package:flutter_batch_5/pages/day6/bloc/theme_cubit.dart';
import 'package:flutter_batch_5/pages/day6/bloc/theme_state.dart';
import 'package:flutter_batch_5/widgets/counter_widget.dart';
import 'package:flutter_batch_5/widgets/sample_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});


  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CounterCubit, CounterState>(
          bloc: counterCubit,
          listener: (context, state) {
            if(state.counter > 0 &&  state.counter % 4 == 0){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Counter ${state.counter}"),
                  content: Text("${state.counter} Adalah Kelipatan 4"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("OK"),
                    )
                  ],
                )
              );
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Counter Page"),
          actions: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context,state) {
                if(state.themeMode == ThemeMode.dark) {
                  return IconButton(
                    onPressed: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.light);
                    },
                    icon: Icon(Icons.light_mode),
                  );
                }
                else {
                  return IconButton(
                    onPressed: () {
                      context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
                    },
                    icon: Icon(Icons.dark_mode),
                  );
                }
                
              }
            ),
            
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: <Widget>[
              BlocBuilder<CounterCubit, CounterState>(
                bloc: counterCubit,
                builder: (context,state) {
                  return CounterWidget(
                    counter: state.counter,
                    onPressed: () => counterCubit.incrementCounter(),
                    onLongPressed: () => counterCubit.incrementCounter(),
                  );
                }
              ),
            ],
          ),
        ),
        floatingActionButton: BlocBuilder<CounterCubit,CounterState>(
          bloc: counterCubit,
          builder: (context,state) {
            return FloatingActionButton(
              onPressed: counterCubit.incrementCounter,
              tooltip: 'Increment',
              child: state.loading? CircularProgressIndicator() : const Icon(Icons.add),
            );
          }
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
