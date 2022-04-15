import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  // FocusNode focus_node = FocusNode();
  final ScrollController optionController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile View',
        ),
        backgroundColor: Color.fromARGB(255, 142, 88, 192),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        children: [
          CircleAvatar(
            backgroundImage: const NetworkImage(
              'https://png.pngtree.com/png-clipart/20210620/original/pngtree-cute-cooking-short-hair-chef-girl-png-image_6430023.jpg',
            ),
            backgroundColor: Colors.white,
            radius: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Designer Name, love with UI/GUI/UX',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView(
                controller: optionController,
                children: <Widget>[
                  ListTile(
                    onTap: () {},
                    autofocus: true,
                    leading: const Icon(Icons.mail),
                    title: const Text('Mail inbox'),
                    trailing: const Text('5'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.group),
                    title: const Text('Friends'),
                    trailing: const Text('25'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.send),
                    title: const Text('Invites'),
                    trailing: const Text('1'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.bookmark),
                    title: const Text('Bookmarks'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.settings),
                    title: const Text('Account Settings'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
