import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpdatesWidget extends StatelessWidget {
  const UpdatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Badusha',
      'Shibin',
      'Fazil',
      'Nabeel',
      'Adhin',
      'Razzi'
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Status',
            style: TextStyle(color: Colors.white),
          ),
          const ListTile(
            title: Text(
              'My Status',
              style: TextStyle(color: Colors.white),
            ),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            subtitle: Text('Tab to add status updates'),
          ),
          const Text(
            'Recent uptades',
            style: TextStyle(color: Colors.white70),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(names[index]),
                      leading: const CircleAvatar(
                        // radius: 30,
                        child: Icon(Icons.person),
                      ),
                    )),
          )

          // Expanded -> Listviewbuilder -> itembuilder ->Listtile title , leading , subtitle
        ],
      ),
    );
  }
}
