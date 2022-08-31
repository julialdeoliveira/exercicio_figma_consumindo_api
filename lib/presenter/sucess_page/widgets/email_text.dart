import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:initial_page/presenter/create_account_page/widgets/body_create_page.dart';

class EmailText extends HookConsumerWidget {
  const EmailText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      ref.read(emailProvider),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
