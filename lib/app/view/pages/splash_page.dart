
import 'dart:convert';
import 'dart:io';

import 'package:esupa_store_pos/updater.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkForUpdate();
  }

  Future<void> _checkForUpdate() async {
    try {
      //TODO: 1. Fetch latest.json from the server
      final response = await http.get(Uri.parse(
          'https://gist.githubusercontent.com/Cody-Gen/f1a9a61035332b4f6a55a981a15c6345/raw/latest.json'));
      if (response.statusCode != 200) {
        // Handle error or proceed without update
        return;
      }

      final jsonResponse = json.decode(response.body);
      final serverVersion = jsonResponse['version'] as String;
      final updateUrl = jsonResponse['url'] as String;

      // 2. Get local version from version.txt
      final localVersion =
          await rootBundle.loadString('assets/version.txt');

      // 3. Compare versions
      if (_isServerVersionHigher(serverVersion, localVersion.trim())) {
        // 4. Show update dialog
        if (mounted) {
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Update Available'),
              content:
                  Text('A new version ($serverVersion) is available. Do you want to update?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () async {
                    Navigator.of(context).pop();
                    await _downloadAndApplyUpdate(updateUrl);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ),
          );
        }
      }
    } catch (e) {
      // Handle errors
      print('Error checking for update: $e');
    }
  }

  bool _isServerVersionHigher(String serverVersion, String localVersion) {
    // Simple version comparison, you might want a more robust solution
    return serverVersion.compareTo(localVersion) > 0;
  }

  Future<void> _downloadAndApplyUpdate(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final directory = await getApplicationDocumentsDirectory();
        final filePath = '${directory.path}/update.zip';
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        // Run the updater
        await runUpdater();
      }
    } catch (e) {
      // Handle errors
      print('Error downloading update: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Checking for updates...'),
          ],
        ),
      ),
    );
  }
}

