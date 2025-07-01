import '../screens/home_page.dart';
import '../screens/qr_scan_page.dart';
import '../screens/scanned_result_page.dart';
import '../screens/gen_qr_page.dart';
import '../screens/show_image_from_url_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String qrScan = 'qr_scan';
  static const String scannedResult = '/scanned_result';
  static const String genQr = '/gen_qr';
  static const String showImageFromUrl = '/show_image_from_url';

  static final routes = {
    home: (context) => HomePage(),
    qrScan: (context) => QrScanPage(),
    scannedResult: (context) => ScannedResultPage(),
    genQr: (context) => GenQrPage(),
    showImageFromUrl: (context) => ShowImageFromUrlPage(),
  };
}
