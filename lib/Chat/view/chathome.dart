import 'package:flutter/material.dart';
import 'package:mtest/Chat/chathome.dart';
import 'package:mtest/model/model.dart';

class ChatHome extends StatelessWidget {
  ChatHome({Key? key}) : super(key: key);
  final List<ChatMessage> chatlist = [
    ChatMessage(
      avatar: 'assets/images/avatar1.png',
      isGroup: false,
      message:
          'In this video,iam demonstrating prototype for mobile app animatio',
      name: 'Ostap Gorin',
      updatedAt: '5.45 PM',
    ),
    ChatMessage(
      avatar: 'assets/images/avatar2.png',
      isGroup: false,
      message: 'Happy to see after long time',
      name: 'Oleg Umansky',
      updatedAt: '5.12 PM',
    ),
    ChatMessage(
      avatar: '',
      isGroup: false,
      message:
          'Slack helps to reduce communication cost between designers and ',
      name: 'Nastia Anikanova',
      updatedAt: '4.45 PM',
    ),
    ChatMessage(
      avatar: 'assets/images/avatar3.jpg',
      isGroup: false,
      message: '/start',
      name: 'Monobank',
      updatedAt: '11.45 AM',
    ),
    ChatMessage(
      avatar: 'assets/images/groupavatar.png',
      isGroup: true,
      message: 'Mega matrix for Rabota.ua',
      name: 'UX Foxes',
      updatedAt: '6.45 AM',
    ),
    ChatMessage(
      avatar: '',
      isGroup: true,
      message: 'photo.zip',
      name: 'New Year Party',
      updatedAt: '6.02 AM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(197, 159, 92, 223),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Chattile(data: chatlist[index]);
        },
        itemCount: chatlist.length,
      ),
    );
  }
}
