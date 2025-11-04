import 'dart:io';
import 'package:path/path.dart' as path;

Future<void> runUpdater() async {
  try {
    // 1. Get the dynamic path to the installation directory.
    // This assumes your .exe is in 'frontend/esupa_store_pos.exe'.
    String exePath = Platform.resolvedExecutable;
    String frontendPath = path.dirname(exePath);
    String appPath = path.dirname(frontendPath);

    // 2. Define the process name of your application.
    String processName = "esupa_store_pos";

    // 3. Define the path to the updater script.
    // This should be the path where you downloaded the updater.ps1 file.
    String updaterScriptPath = path.join(appPath, "updater.ps1");

    // 4. Run the PowerShell script.
    await Process.start('powershell.exe', [
      '-ExecutionPolicy', 'Bypass',
      '-File', updaterScriptPath,
      '-appPath', appPath,
      '-processName', processName,
    ]);

    // 5. Close the main application.
    exit(0);
  } catch (e) {
    // Handle any errors here, e.g., show a dialog to the user.
    print("Error running updater: $e");
  }
}