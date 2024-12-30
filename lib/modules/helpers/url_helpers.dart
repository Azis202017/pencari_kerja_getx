import 'package:url_launcher/url_launcher.dart';

class UrlHelpers {
  Future<void> launch(String text) async {
    if (!await launchUrl(Uri.parse(text))) {
      throw Exception('Could not launch $text');
    }
  }
}
