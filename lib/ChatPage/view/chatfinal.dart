import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mtest/ChatPage/chatpg.dart';
import 'package:mtest/model/model2.dart';

class ChatFinal extends StatefulWidget {
  ChatFinal({Key? key}) : super(key: key);
  @override
  State<ChatFinal> createState() => _ChatFinalState();
}

class _ChatFinalState extends State<ChatFinal> {
  TextEditingController messagecontroller = TextEditingController();
  bool showsend = false;
  bool showemoji = false;
  FocusNode focusNode = FocusNode();
  List<Chat> msglist = [
    Chat(
      isReaded: true,
      image: 'asset/image/icon1.jpg',
      isSend: true,
      message: 'what' 's going on?',
      sendAt: '9.45 AM',
    ),
    Chat(
      isReaded: true,
      isSend: true,
      message: 'Hey there?',
      sendAt: '10.45 AM',
    ),
    Chat(
      isReaded: false,
      isSend: false,
      message: 'Hello there?',
      sendAt: '10.45 AM',
    ),
    Chat(
      isReaded: false,
      isSend: false,
      message: 'how do you do',
      sendAt: '12.40 PM',
    ),
    Chat(isReaded: true, isSend: true, message: 'hellooo', sendAt: '12.40 PM'),
    Chat(
      isReaded: false,
      isSend: false,
      message:
          'what were you up to, i thought you were sick, how have you been',
      sendAt: '12.46 PM',
    ),
    Chat(
      isReaded: false,
      isSend: true,
      message: 'how are you',
      sendAt: '12.48 PM',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Page'),
        backgroundColor: const Color.fromARGB(197, 159, 92, 223),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Chatbubble(messagedata: msglist[index]);
              },
              itemCount: msglist.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            focusNode: focusNode,
                            controller: messagecontroller,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  showsend = true;
                                });
                              } else {
                                setState(() {
                                  showsend = false;
                                });
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'message',
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard,
                                  color: Colors.black,
                                ),
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.attach_file,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 102, 63, 112),
                          child: showsend == true
                              ? const Icon(Icons.send)
                              : const Icon(Icons.mic),
                        ),
                      )
                    ],
                  ),
                  if (showemoji == true) selectEmoji() else Container()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget selectEmoji() {
  return EmojiPicker(
    onEmojiSelected: (emoji, category) {
      //messagecontroller.text = emoji.emoji;
      print(category);
    },
  );
}
