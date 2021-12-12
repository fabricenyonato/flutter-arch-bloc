import 'package:flutter_arch_bloc/vars.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

String urlToJson(String url) => '$baseUrl$url';

@JsonSerializable(createToJson: false)
class ImageAttributes {
  @JsonKey(fromJson: urlToJson)
  final String url;

  ImageAttributes({ required this.url });

  factory ImageAttributes.fromJson(Map<String, dynamic> json) =>
    _$ImageAttributesFromJson(json);
}

@JsonSerializable(createToJson: false)
class Image {
  final int id;
  final ImageAttributes attributes;

  Image({ required this.id, required this.attributes });

  factory Image.fromJson(Map<String, dynamic> json) =>
    _$ImageFromJson(json);
}

@JsonSerializable(createToJson: false)
class ImageResponse {
  final Image data;

  ImageResponse({ required this.data });

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
    _$ImageResponseFromJson(json);
}
