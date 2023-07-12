// ignore_for_file: file_names, unused_local_variable

import 'package:cs_provider/Page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  const Page2({
    super.key,

  });

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
                  return const Page3();
                },
              ),
            );
          },
          child: const Text("Go Page 3"),
        ),
      ),
    );
  }
}
