import 'package:flutter/material.dart';
import 'package:implementation_test_app/model/user.dart';

class ListOfItemsPage extends StatefulWidget {
  const ListOfItemsPage({
    super.key,
  });

  @override
  State<ListOfItemsPage> createState() => _ListOfItemsPageState();
}

class _ListOfItemsPageState extends State<ListOfItemsPage> {
  List<User> users = getUsers();

  static List<User> getUsers() {
    const data = [
      {
        "name": "Leanne Graham",
        "email": "Sincere@april.biz",
        "imageUrl":
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
      },
      {
        "name": "Ervin Howell",
        "email": "Shanna@melissa.tv",
        "imageUrl":
            "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
      },
    ];

    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View With JSON'),
        centerTitle: true,
      ),
      body: Center(
        child: buildUsers(users),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buildUsers(List<User> users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(user.imageUrl),
              ),
              title: Text(user.name),
              subtitle: Text(user.email),
            ),
          );
        },
      );
}
