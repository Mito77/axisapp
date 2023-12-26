class Profile {
  double? aspectRatio;
  int? height;
  dynamic? iso6391;
  String? filePath;
  double? voteAverage;
  int? voteCount;
  int? width;

  Profile({
    required this.aspectRatio,
    required this.height,
    required this.iso6391,
    required this.filePath,
    required this.voteAverage,
    required this.voteCount,
    required this.width,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    aspectRatio: json["aspect_ratio"]?.toDouble(),
    height: json["height"],
    iso6391: json["iso_639_1"],
    filePath: json["file_path"],
    voteAverage: json["vote_average"]?.toDouble(),
    voteCount: json["vote_count"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "aspect_ratio": aspectRatio,
    "height": height,
    "iso_639_1": iso6391,
    "file_path": filePath,
    "vote_average": voteAverage,
    "vote_count": voteCount,
    "width": width,
  };
}