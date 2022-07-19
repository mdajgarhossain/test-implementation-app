import 'package:flutter/material.dart';

class ListOfItemsPage extends StatefulWidget {
  const ListOfItemsPage({
    super.key,
  });

  @override
  State<ListOfItemsPage> createState() => _ListOfItemsPageState();
}

class _ListOfItemsPageState extends State<ListOfItemsPage> {
  List<Card> getItem() {
    return [
      itemView(
          'John',
          'https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          '2022/07/19'),
      itemView(
          'Smith',
          'https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          '2022/07/19'),
      itemView(
          'Smith',
          'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGVjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          '2022/07/19')
    ];
  }

  itemView(name, imageUrl, date) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
        child: ListTile(
          leading: Image.network(imageUrl),
          title: Text(name),
          subtitle: Text(date),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Of Items'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: getItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
