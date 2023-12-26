import 'package:axisapp/models/popularPeople/result/resultMapper.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ResultAdapter extends TypeAdapter<Result> {
  @override
  final int typeId = 0;

  @override
  Result read(BinaryReader reader) {
    return Result.fromJson(reader.readMap().cast<String, dynamic>());
  }

  @override
  void write(BinaryWriter writer, Result obj) {
    writer.writeMap(obj.toJson());
  }
}
