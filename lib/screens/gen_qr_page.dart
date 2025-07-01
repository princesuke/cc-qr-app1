import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenQrPage extends StatefulWidget {
  const GenQrPage({super.key});

  @override
  State<GenQrPage> createState() => _GenQrPageState();
}

class _GenQrPageState extends State<GenQrPage> {
  final _controller = TextEditingController();
  String? _qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สร้าง QR Code')),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _qrData =
                      _controller.text.trim().isEmpty
                          ? null
                          : _controller.text.trim();
                });
              },
              child: const Text('สร้าง QR Code'),
            ),
            const SizedBox(height: 40),
            if (_qrData != null)
              QrImageView(data: _qrData!, version: QrVersions.auto, size: 300),
          ],
        ),
      ),
    );
  }
}
