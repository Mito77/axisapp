

import 'dart:convert';

import 'package:axisapp/models/Images/Porfiles/profilesMapper.dart';

ImagesMapper imagesMapperFromJson(String str) => ImagesMapper.fromJson(json.decode(str));

String imagesMapperToJson(ImagesMapper data) => json.encode(data.toJson());

class ImagesMapper {
  int? id;
  List<Profile>? profiles;

  ImagesMapper({
    required this.id,
    required this.profiles,
  });

  factory ImagesMapper.fromJson(Map<String, dynamic> json) => ImagesMapper(
    id: json["id"],
    profiles: List<Profile>.from(json["profiles"].map((x) => Profile.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "profiles": List<dynamic>.from(profiles!.map((x) => x.toJson())),
  };
}


