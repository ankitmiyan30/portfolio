import 'package:url_launcher/url_launcher.dart';

class AppHelper {
  static void launchURL(String url) async => await launchUrl(
        Uri.parse(url),
        webOnlyWindowName: '_blank',
      );
}
