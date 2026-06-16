import 'dart:io';

class FeatureGenerator {
  void generate(String featureName) {
    final basePath =
        'lib/features/$featureName';

    final folders = [

      '$basePath/data/datasources',

      '$basePath/data/models',

      '$basePath/data/repositories',

      '$basePath/domain/entities',

      '$basePath/domain/repositories',

      '$basePath/domain/usecases',

      '$basePath/presentation/pages',

      '$basePath/presentation/widgets',

      '$basePath/presentation/cubit',
    ];

    for (final folder in folders) {

      Directory(folder)
          .createSync(
        recursive: true,
      );
    }

    print(
      'Feature "$featureName" created successfully',
    );
  }
}