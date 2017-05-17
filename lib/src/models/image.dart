import 'dart:convert';

class Image {
  String url;
  String cloudinaryId;
  int width;
  int height;

  Image.fromJson(String json) {
    Map map = JSON.decode(json);
    url = map['url'];
    cloudinaryId = map['cloudinaryId'];
    width = map['width'];
    height = map['height'];
  }
}