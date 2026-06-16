import 'package:flutter_cleanly_architected/src/core/file_writers.dart';

class EntityGenerator {
  void generate(String name) {
    final className = '${name[0].toUpperCase()}${name.substring(1)}';

    final path =
        'lib/features/$name/domain/entities/${name.toLowerCase()}.dart';

    final content =
        '''
class $className {
  const $className();
}
''';

    FileWriter.createFile(path, content);

    print('Entity "$className" created successfully');
  }
}
