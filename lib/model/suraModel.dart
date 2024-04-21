// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:quranapp/model/AyaModel.dart';

class modelSura {
 num number;
 String name; 
  modelSura({
    required this.number,
    required this.name,
  });
 

  modelSura copyWith({
    num? number,
    String? name,
  }) {
    return modelSura(
      number: number ?? this.number,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
    };
  }

  factory modelSura.fromMap(Map<String, dynamic> map) {
    return modelSura(
      number: map['number'] as num,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory modelSura.fromJson(String source) => modelSura.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'modelSura(number: $number, name: $name)';

  @override
  bool operator ==(covariant modelSura other) {
    if (identical(this, other)) return true;
  
    return 
      other.number == number &&
      other.name == name;
  }

  @override
  int get hashCode => number.hashCode ^ name.hashCode;
}
