import 'dart:convert';

Chat chatFromJson(String str) => Chat.fromJson(json.decode(str));

String chatToJson(Chat data) => json.encode(data.toJson());

class Chat {
  Chat({
    this.isSend,
    this.isReaded,
    this.sendAt,
    this.message,
    this.image,
  });

  dynamic isSend;
  dynamic isReaded;
  dynamic sendAt;
  dynamic message;
  dynamic image;

  factory Chat.fromJson(dynamic json) => Chat(
        isSend: json['isSend'] as bool,
        isReaded: json['isReaded'] as bool,
        sendAt: json['send At'] as String,
        message: json['message'] as String,
        image:json['image'] as String
      ,);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'isSend': isSend,
        'isReaded': isReaded,
        'send At': sendAt,
        'message': message,
        'image':image,
      };
}
