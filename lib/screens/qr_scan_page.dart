import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../routes/app_routes.dart';

bool isImageUrl(String? url) {
  if (url == null) return false;
  return url.startsWith('http') &&
      (url.contains('.jpg') ||
          url.contains('.jpeg') ||
          url.contains('.png') ||
          url.contains('.gif') ||
          url.contains('.webp'));
}

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  bool _scanned = false;

  void _onDetect(BarcodeCapture capture) {
    final Barcode? barcode = capture.barcodes.first;
    final value = barcode?.rawValue;
    if (!_scanned && barcode != null && value != null) {
      setState(() {
        _scanned = true;
      });

      if (isImageUrl(value)) {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.showImageFromUrl,
          arguments: {'url': value},
        );
      } else {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.scannedResult,
          arguments: {'result': barcode.rawValue},
        );
      }
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
