// ignore_for_file: file_names, unused_local_variable

import 'package:cs_provider/Page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/ValueProvider.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Page2();
                },
              ),
            );
          },
          child: Consumer<ValueProvider>(
            builder: (context, value, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Go Page 2"),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<ValueProvider>(
                    builder: (context, value, child) {
                      return Text(value.x.toString());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      value.increment();
                    },
                    child: const Text("Increment"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
