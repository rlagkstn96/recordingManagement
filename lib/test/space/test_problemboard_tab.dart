import 'package:flutter/material.dart';

class ProblemBoard extends StatefulWidget {
  const ProblemBoard({
    super.key,
  });

  @override
  State<ProblemBoard> createState() => _ProblemBoardState();
}

class _ProblemBoardState extends State<ProblemBoard> {
  final String messages = 'ProblemBoard';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text('부동산 임대차 계약 어떻게 진행하세요?'),
              subtitle: Text('$messages'),
              tileColor: Colors.white,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.black)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(title: const Text('ListTile Hero')),
                      body: Center(
                        child: Hero(
                          tag: 'ListTile-Hero',
                          child: Material(
                            child: ListTile(
                              title: const Text('ListTile with Hero'),
                              subtitle: const Text('Tap here to go back'),
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
          );
        });
  }
}
