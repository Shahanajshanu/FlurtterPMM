import 'dart:html';

import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding:  const EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return const Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(
                child: Text('12\n Dec',textAlign: TextAlign.center,),
                radius: 30,
              ),
              title: Text('RS 100000'),
              subtitle: Text('Travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 10);
  }
}
