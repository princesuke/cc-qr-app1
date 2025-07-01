import '../screens/home_page.dart';
import '../screens/qr_scan_page.dart';
import '../screens/scanned_result_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String qrScan = 'qr_scan';
  static const String scannedResult = '/scanned_result';

  static final routes = {
    home: (context) => HomePage(),
    qrScan: (context) => QrScanPage(),
    scannedResult: (context) => ScannedResultScreen(),
  };
}
