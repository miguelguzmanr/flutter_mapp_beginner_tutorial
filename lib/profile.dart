import 'package:flutter/material.dart';

const int itemCount = 25;

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item #$index'),
          leading: const Icon(Icons.person),
          trailing: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
          onTap: () {},
        );
      },
    );
  }
}
