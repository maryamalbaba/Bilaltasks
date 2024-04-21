// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AyaModel {

 String  text;
  num numberInSurah;
  AyaModel({
    required this.text,
    required this.numberInSurah,
  });

  AyaModel copyWith({
    String? text,
    num? numberInSurah,
  }) {
    return AyaModel(
      text: text ?? this.text,
      numberInSurah: numberInSurah ?? this.numberInSurah,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'numberInSurah': numberInSurah,
    };
  }

  factory AyaModel.fromMap(Map<String, dynamic> map) {
    return AyaModel(
      text: map['text'] as String,
      numberInSurah: map['numberInSurah'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory AyaModel.fromJson(String source) => AyaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AyaModel(text: $text, numberInSurah: $numberInSurah)';

  @override
  bool operator ==(covariant AyaModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.text == text &&
      other.numberInSurah == numberInSurah;
  }

  @override
  int get hashCode => text.hashCode ^ numberInSurah.hashCode;
}
