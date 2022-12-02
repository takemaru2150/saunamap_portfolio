import 'package:url_launcher/url_launcher.dart';

/// URLを開く
Future<void> _launchUrl(String _url) async {
  if (!await launchUrl(Uri.parse(_url), mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $_url';
  }
}
