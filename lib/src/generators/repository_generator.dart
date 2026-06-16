import 'package:flutter_cleanly_architected/src/core/file_writers.dart';

class RepositoryGenerator {
  void generate(String name) {
    final className = '${name[0].toUpperCase()}${name.substring(1)}';

    final path =
        'lib/features/$name/domain/repositories/${name.toLowerCase()}_repository.dart';

    final content =
        '''
abstract class ${className}Repository {

  Future<void> getAll();

  Future<void> getById(
    String id,
  );

  Future<void> create();

  Future<void> update();

  Future<void> delete(
    String id,
  );
}
''';

    FileWriter.createFile(path, content);

    print('Repository "${className}Repository" created successfully');
  }
}
