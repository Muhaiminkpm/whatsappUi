// import 'dart:ffi';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui2/widgets/calls.dart';
import 'package:whatsapp_ui2/widgets/chats.dart';
import 'package:whatsapp_ui2/widgets/communities.dart';
import 'package:whatsapp_ui2/widgets/updates.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    ChatWidget(),
    UpdatesWidget(),
    CommunitiesWidget(),
    CallsWidget(),
  ];

  List<String> titles = [
    'WhatsApp',
    'Updates',
    'Communities',
    'Calls',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            titles[selectedIndex],
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_scanner),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera),
              color: Colors.white,
            ),
            if (titles[selectedIndex] == 'Updates' ||
                titles[selectedIndex] == 'Calls')
              const Icon(Icons.search, color: Colors.white),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            )
          ],
          backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 8, 168, 21),
        child: const Icon(Icons.add_comment),
        onPressed: () {
          const Icon(
            Icons.chat_outlined,
            color: Colors.white,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          log(value.toString());
          setState(() {
            selectedIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.update),
              label: "Updates"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.groups),
              label: "Communities"),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.call),
              label: "Calls")
        ],
        showUnselectedLabels: true,
      ),
    );
  }
}
