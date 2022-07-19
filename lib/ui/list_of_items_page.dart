import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:implementation_test_app/model/user.dart';
import 'package:http/http.dart' as http;

class ListOfItemsPage extends StatefulWidget {
  const ListOfItemsPage({
    super.key,
  });

  @override
  State<ListOfItemsPage> createState() => _ListOfItemsPageState();
}

class _ListOfItemsPageState extends State<ListOfItemsPage> {
  // Future<List<User>> users = getUsers();

  late Future<List<User>> users;
  @override
  void initState() {
    super.initState();
    users = getUsers(context);
  }

  static Future<List<User>> getUsers(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');

    final body = json.decode(data);
    return body.map<User>(User.fromJson).toList();
  }

  // static Future<List<User>> getUsers() async {
  //   const url =
  //       'https://raw.githubusercontent.com/mdajgarhossain/users-hub/master/src/usersData/users.json';
  //
  //   final response = await http.get(Uri.parse(url));
  //   final body = json.decode(response.body);
  //
  //   return body.map<User>(User.fromJson).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View With JSON'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: users,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final users = snapshot.data!;
              return buildUsers(users);
            } else {
              return const Text('No user data');
            }
          },
        ),
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
                backgroundImage: NetworkImage(user.image),
              ),
              title: Text(user.name),
              subtitle: Text(user.email),
            ),
          );
        },
      );
}
