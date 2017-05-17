import 'dart:convert';

import 'package:igdb/src/enums/gender.dart';
import 'package:igdb/src/enums/species.dart';
import 'package:igdb/src/models/base.dart';
import 'package:igdb/src/models/image.dart';

class Character extends Base {
  String slug;
  Image mugShot;
  Gender gender;
  List<String> akas;
  Species species;
  List<double> gameIds;
  List<double> peopleIds;

  Character.fromJson(String json) {
    Map map = JSON.decode(json);
    id = map['id'];
    name = map['name'];
    createdAt = map['createdAt'];
    updatedAt = map['updateAt'];
    slug = map['slug'];
    url = map['url'];
    mugShot = map['mug_shot'];
    gender = Gender.values[map['gender']];
    akas = map['akas'];
    species = Species.values[map['species']];
    gameIds = map['games'];
    peopleIds = map['people'];
  }
}