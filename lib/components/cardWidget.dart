// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  cardWidget({
    Key? key,
    required this.suraname,
  }) : super(key: key);
  final String suraname;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: Text(suraname),
      ),
    );
  }
}
