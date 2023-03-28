import 'package:flutter/material.dart';

class AdviserBoard extends StatelessWidget {
  const AdviserBoard({
    super.key,
  });

  final String messages = 'AdviserBoard';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: const Text('부동산 임대차 계약'),
          subtitle: Text('$messages'),
          tileColor: Colors.white,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.black)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<Widget>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar:
                      AppBar(title: const Text('ListTile Hero')),
                      body: Center(
                        child: Hero(
                          tag: 'ListTile-Hero',
                          child: Material(
                            child: ListTile(
                              title: const Text('ListTile with Hero'),
                              subtitle:
                              const Text('Tap here to go back'),
                              tileColor: Colors.black,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            );
          },
        ),
      ),
    );
  }
}