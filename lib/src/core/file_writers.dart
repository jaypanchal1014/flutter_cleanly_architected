import 'dart:io';

class FileWriter {
  static void createFile(
    String path,
    String content,
  ) {
    final file = File(path);

    file.createSync(
      recursive: true,
    );

    file.writeAsStringSync(
      content,
    );
  }
}