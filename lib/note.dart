import 'dart:convert';

class Note {
  int id;
  dynamic document;
  Note({required this.id, required this.document});

  Note copyWith({int? id, var document}) {
    return Note(id: id ?? this.id, document: document ?? this.document);
  }

  Map <dynamic, dynamic> toMap(){
    return{
      'id': id,
      'body': document,
    };
  }

  factory Note.fromMap(Map<dynamic, dynamic>map){
    return Note(
      id: map['id'], 
      document: map['body'],
    );
  }

  String toJson() =>json.encode(toMap());
}
