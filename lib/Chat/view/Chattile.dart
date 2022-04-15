import 'package:flutter/material.dart';
import 'package:mtest/ChatPage/view/chatfinal.dart';
import 'package:mtest/model/model.dart';

class Chattile extends StatefulWidget {
  Chattile({Key? key, required this.data}) : super(key: key);
  ChatMessage data;

  @override
  ChattileState createState() => ChattileState();
}

class ChattileState extends State<Chattile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://png.pngtree.com/element_pic/17/01/07/9e841a6c76489bab75e9311b5d8c5ca3.jpg'),
        // backgroundImage: widget.data.avatar == ''
        //     ? AssetImage(
        //         widget.data.isGroup == true
        //             ? 'assets/images/groupicon.png'
        //             : 'assets/images/icon1.jpg',
        //       )
        //     : AssetImage(widget.data.avatar.toString()),
        radius: 20,
        backgroundColor: Colors.grey,
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        widget.data.name.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(widget.data.message.toString()),
      trailing: Text(widget.data.updatedAt.toString()),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<MaterialPageRoute>(
            builder: (context) => ChatFinal(),
          ),
        );
      },
    );
  }
}
