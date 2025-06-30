import '../screens/home_page.dart';
import '../screens/qr_scan_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String qrScan = 'qr_scan';

  static final routes = {
    home: (context) => HomePage(),
    qrScan: (context) => QrScanPage(),
  };
}
