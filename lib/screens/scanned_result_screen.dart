import 'package:flutter/material.dart';

class ScannedResultScreen extends StatelessWidget {
  const ScannedResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ผลลัพธ์ QR Code')),
      body: Text('qr code'),
    );
  }
}
