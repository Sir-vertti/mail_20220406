import 'package:flutter/material.dart';

/// Flutter code sample for [ListTile].

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ListTileExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mailboxes')),
      body: Stack(
        children: [
          ListView(
            children: const <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text('Today'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.mark_unread_chat_alt),
                  title: Text('Unread'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.inbox),
                  title: Text('Inbox'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.archive),
                  title: Text('Archive'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Junk'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.delete_outline),
                  title: Text('Trash'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Card(
                color: Colors.transparent, // Set the color to white
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text('Icloud'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 8.0, // Ajusta la distancia desde la parte superior
            right: 16.0, // Ajusta la distancia desde la derecha
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Edit',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              'uploaded just now',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
