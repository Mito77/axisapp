
import 'dart:convert';

import 'result/resultMapper.dart';

PopularPeopleMapper popularPeopleMapperFromJson(String str) => PopularPeopleMapper.fromJson(json.decode(str));

String popularPeopleMapperToJson(PopularPeopleMapper data) => json.encode(data.toJson());

class PopularPeopleMapper {
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  PopularPeopleMapper({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory PopularPeopleMapper.fromJson(Map<String, dynamic> json) => PopularPeopleMapper(
    page: json["page"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "total_pages": totalPages,
    "total_results": totalResults,
  };
}





