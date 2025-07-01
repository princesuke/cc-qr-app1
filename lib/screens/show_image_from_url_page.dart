import 'package:flutter/material.dart';

class ShowImageFromUrlPage extends StatelessWidget {
  const ShowImageFromUrlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final String? url = args?['url'] as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('แสดงรูปจาก QR Code')),
      body: Column(
        children: [
          Image.network(
            url!,
            errorBuilder: (_, __, ___) => const Text('โหลดรูปไม่ได้'),
          ),
          const SizedBox(height: 20),
          SelectableText(url, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.popUntil(context, (r) => r.isFirst),
            child: const Text('กลับหน้าแรก'),
          ),
        ],
      ),
    );
  }
}
