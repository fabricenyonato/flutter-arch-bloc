// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageAttributes _$ImageAttributesFromJson(Map<String, dynamic> json) =>
    ImageAttributes(
      url: urlToJson(json['url'] as String),
    );

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as int,
      attributes:
          ImageAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    ImageResponse(
      data: Image.fromJson(json['data'] as Map<String, dynamic>),
    );
