import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenQrPage extends StatefulWidget {
  const GenQrPage({super.key});

  @override
  State<GenQrPage> createState() => _GenQrPageState();
}

class _GenQrPageState extends State<GenQrPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'กรอกข้อความหรือ URL',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
