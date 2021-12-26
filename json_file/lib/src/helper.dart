import 'dart:convert';
import 'dart:io';

class JsonFileHelper {
  static void save(Map<String, dynamic> data, File file)  {
    file.writeAsStringSync(jsonEncode(data));
  }

  static Map<String, dynamic> load(File file)  {
    if (!file.existsSync()) {
      throw new Exception("Error load: ${file.path} exists = false");
    }
    return jsonDecode(file.readAsStringSync());
  }
}
