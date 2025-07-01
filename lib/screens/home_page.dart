import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Demo Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.qrScan);
              },
              icon: const Icon(Icons.qr_code_scanner),
              label: const Text('แสกน QR Code'),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.genQr);
              },
              label: const Text('สร้าง QR Code'),
              icon: const Icon(Icons.qr_code),
            ),
          ],
        ),
      ),
    );
  }
}
