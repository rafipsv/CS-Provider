// ignore_for_file: file_names, unused_local_variable

import 'package:cs_provider/Providers/ValueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Go Page 1"),
            ),
            const SizedBox(
              height: 20,
            ),
            Consumer<ValueProvider>(
              builder: (context, value, child) {
                return Text(value.x.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
