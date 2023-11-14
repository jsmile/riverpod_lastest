import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/activity_model.dart';
import '../providers/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod StatelessWidget'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          // Read the activityProvider. This will start the network request
          // if it wasn't already started.
          // By using ref.watch, this widget will rebuild whenever the
          // the activityProvider updates. This can happen when:
          // - The response goes from "loading" to "data/error"
          // - The request was refreshed
          // - The result was modified locally (such as when performing side-effects)
          // ...

          // AsyncValue<T> : FutureProvider<T> 의 결과값을 받는 형태.
          final AsyncValue<ActivityModel> activityModel =
              ref.watch(activityModelProvider);

          return Center(
            /// Since network-requests are asynchronous and can fail, we need to
            /// handle both error and loading states. We can use pattern matching for this.
            /// We could alternatively use `if (activity.isLoading) { ... } else if (...)`
            child: switch (activityModel) {
              AsyncData(:final value) => Text('Activity: ${value.activity}'),
              AsyncError() => const Text('Oops, something unexpected happened'),
              _ => const CircularProgressIndicator(),
            },
          );
        },
      ),
    );
  }
}
