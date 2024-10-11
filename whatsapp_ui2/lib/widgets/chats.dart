import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  List<String> names = [
    'Shibin',
    'Nazmal',
    'Adhin',
    'Muhaimin',
    'Jasim',
    'Abishith',
    'Afeef',
  ];
  List<String> massage = [
    'hi',
    'hai',
    'yanda pad',
    'yavidee man',
    'sugellee',
    'Bc anno',
    'yfg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Chip(
                label: const Text("All"),
                side: BorderSide.none,
                backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Chip(
                label: const Text("Unread"),
                side: BorderSide.none,
                backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Chip(
                label: const Text("Favourites"),
                side: BorderSide.none,
                backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Chip(
                label: const Text("Groups"),
                side: BorderSide.none,
                backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  names[index],
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(massage[index]),
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                trailing: const Text('12:34 PM'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
