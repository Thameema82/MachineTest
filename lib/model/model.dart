// To parse this JSON data, do
//
//final chat = chatFromJson(jsonString);

import 'dart:convert';

ChatMessage chatMessageFromJson(String str) =>
    ChatMessage.fromJson(json.decode(str));

String chatMessageToJson(ChatMessage data) => json.encode(data.toJson());

class ChatMessage {
  ChatMessage({
    required this.avatar,
    required this.name,
    required this.isGroup,
    required this.updatedAt,
    required this.message,
  });

  dynamic avatar;
  dynamic name;
  dynamic isGroup;
  dynamic updatedAt;
  dynamic message;

  factory ChatMessage.fromJson(dynamic json) => ChatMessage(
        avatar: json['avatar'] as String,
        name: json['name'] as String,
        isGroup: json['isGroup'] as bool,
        updatedAt: json['updatedAt'] as String,
        message: json['message'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'avatar': avatar,
        'name': name,
        'isGroup': isGroup,
        'updatedAt': updatedAt,
        'message': message,
      };
}
