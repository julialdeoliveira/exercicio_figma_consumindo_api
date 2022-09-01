import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:initial_page/riverpod/user_provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(
          "Olá, ${user!.name}",
          style: const TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
