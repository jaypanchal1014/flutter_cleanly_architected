import 'package:flutter_cleanly_architected/src/generators/entity_generator.dart';
import 'package:flutter_cleanly_architected/src/generators/feature_generator.dart';
import 'package:flutter_cleanly_architected/src/generators/repository_generator.dart';

void main(List<String> args) {

  if (args.isEmpty) {
    print('Flutter Cleanly Architected');

    print('');

    print('Commands:');

    print('cleanly feature <name>');
    print('cleanly entity <name>');
    print('cleanly repository <name>');

    return;
  }

  if (args.length < 2) {
    print('Usage:');

    print('cleanly feature <name>');
    print('cleanly entity <name>');
    print('cleanly repository <name>');

    return;
  }

  final command = args[0];

  final name = args[1];

  switch (command) {
    case 'feature':
      FeatureGenerator().generate(name);
      break;

    case 'entity':
      EntityGenerator().generate(name);
      break;

    case 'repository':
      RepositoryGenerator().generate(name);
      break;

    default:
      print('Unknown command: $command');
  }
}