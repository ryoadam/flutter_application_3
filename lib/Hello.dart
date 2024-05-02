// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Hello {
  final int id;
  final String name;
  final String addres;
  Hello({
    required this.id,
    required this.name,
    required this.addres,
  });

// halo koding
 int getInt(){
  return 0;
 }
  Hello copyWith({
    int? id,
    String? name,
    String? addres,
  }) {
    return Hello(
      id: id ?? this.id,
      name: name ?? this.name,
      addres: addres ?? this.addres,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'addres': addres,
    };
  }

  factory Hello.fromMap(Map<String, dynamic> map) {
    return Hello(
      id: map['id'] as int,
      name: map['name'] as String,
      addres: map['addres'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hello.fromJson(String source) => Hello.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Hello(id: $id, name: $name, addres: $addres)';

  @override
  bool operator ==(covariant Hello other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.addres == addres;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ addres.hashCode;
}
