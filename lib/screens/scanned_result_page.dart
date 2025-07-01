import 'package:flutter/material.dart';

class ScannedResultPage extends StatelessWidget {
  const ScannedResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final String? result = args?['result'] as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('ผลลัพธ์ QR Code')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            Text(
              result!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
              child: const Text('กลับหน้าแรก'),
            ),
          ],
        ),
      ),
    );
  }
}
