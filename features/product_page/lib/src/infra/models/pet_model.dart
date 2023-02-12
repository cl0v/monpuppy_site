import 'dart:convert';

import 'package:product_page/src/domain/entities/pet.dart';

class PetModel extends PetEntity {

  PetModel(
    String id,
    String path,
    String name,
    String imageUrl,
    String description,
    String porte,
    String cares,
  ) : super(
          id: id,
          path: path,
          name: name,
          description: description,
          imageUrl: imageUrl,
          porte: porte,
          cares: cares,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'path': path});
    result.addAll({'name': name});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'description': description});
    result.addAll({'porte': porte});
    result.addAll({'cares': cares});

    return result;
  }

  factory PetModel.fromMap(Map<String, dynamic> map) {
    return PetModel(
      map['id'] ?? '',
      map['path'] ?? '',
      map['name'] ?? '',
      map['imageUrl'] ?? '',
      map['description'] ?? '',
      map['porte'] ?? '',
      map['cares'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PetModel.fromJson(String source) =>
      PetModel.fromMap(json.decode(source));
}
