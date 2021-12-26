import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:json_file/json_file.dart';

class JsonFileGenerator extends GeneratorForAnnotation<JsonFile> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    return 'void _\$${element.name}ToFile (${element.name} instance, File file) {' +
        'JsonFileHelper.save(instance.toJson(), file);' +
        '}' +
        '${element.name} _\$${element.name}FromFile (File file) {' +
        'return ${element.name}.fromJson(JsonFileHelper.load(file));' +
        '}';
  }
}
