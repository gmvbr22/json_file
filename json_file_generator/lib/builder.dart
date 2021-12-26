import 'package:build/build.dart';
import 'package:json_file_generator/src/json_file_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder jsonFile(BuilderOptions options) =>
    SharedPartBuilder([JsonFileGenerator()], 'json_file');