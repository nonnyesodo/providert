import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providert/class.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add here'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                final text = controller.text;
                if (text.isNotEmpty) {
                  final word = Word(name: text);
                  context.read<WordProvider>().add(word);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('add')),
        ],
      ),
    );
  }
}
