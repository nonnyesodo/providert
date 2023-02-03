import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providert/class.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProviderTest'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<WordProvider>(builder: (context, value, child) {
              return TextWWidget(
                textword: value.wordlist,
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/new');
                },
                child: Text('add')),
            ElevatedButton(
                onPressed: () {
                  context.read<WordProvider>().reset();
                },
                child: const Text('reset')),
          ],
        ),
      ),
    );
  }
}
