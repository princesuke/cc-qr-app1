import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../routes/app_routes.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  bool _scanned = false;
  String text = '';

  void _onDetect(BarcodeCapture capture) {
    final Barcode? barcode = capture.barcodes.first;
    if (!_scanned && barcode != null && barcode.rawValue != null) {
      print(barcode.rawValue!);
      setState(() {
        _scanned = true;
        // text = barcode.rawValue!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('แสกน QR Code')),
      // body: Column(children: [MobileScanner(onDetect: _onDetect), Text(text)]),
      body: MobileScanner(onDetect: _onDetect),
    );
  }
}
