import 'package:axisapp/models/popularPeople/knownFor/knownForMapper.dart';

class Result {
  bool? adult;
  int? gender;
  int? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  List<KnownFor>? knownFor;

  Result({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.knownFor,
  });
  Result.offLine({  required adult,
    required gender,
    required id,
    required knownForDepartment,
    required name,
    required originalName,
    required popularity,
    required profilePath,
    required knownFor,}){
    this.adult=adult;
    this.gender=gender;
    this.id=id;
    this.knownForDepartment=knownForDepartment;
    this.name=name;
    this.originalName=originalName;
    this.popularity=popularity;
    this.profilePath=profilePath;
    this.knownFor=knownFor;
  }

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    adult: json["adult"],
    gender: json["gender"],
    id: json["id"],
    knownForDepartment:json["known_for_department"],
    name: json["name"],
    originalName: json["original_name"],
    popularity: json["popularity"]?.toDouble(),
    profilePath: json["profile_path"],
    knownFor: List<KnownFor>.from(json["known_for"].map((x) => KnownFor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "gender": gender,
    "id": id,
    "known_for_department":knownForDepartment,
    "name": name,
    "original_name": originalName,
    "popularity": popularity,
    "profile_path": profilePath,
    "known_for": List<dynamic>.from(knownFor!.map((x) => x.toJson())),
  };
}