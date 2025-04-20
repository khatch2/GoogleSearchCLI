import 'dart:io';

void main() {
  stdout.write('Enter your search query: ');
  String query = stdin.readLineSync() ?? '';

  String url = 'https://www.google.com/search?q=${Uri.encodeComponent(query)}';

  Process.run(_getCommand(), _getArguments(url)).then((result) {
    if (result.exitCode == 0) {
      print('Searching for: $query');
    } else {
      print('Failed to open browser: ${result.stderr}');
    }
  });
}

String _getCommand() {
  if (Platform.isLinux) {
    return 'xdg-open';
  } else if (Platform.isWindows) {
    return 'cmd';
  } else if (Platform.isMacOS) {
    return 'open';
  } else {
    throw UnsupportedError('Unsupported OS');
  }
}

List<String> _getArguments(String url) {
  if (Platform.isWindows) {
    return ['/c', 'start', url];
  } else {
    return [url];
  }
}
