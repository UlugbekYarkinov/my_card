import 'package:flutter/material.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ListTile(
        leading: Icon(
          icon,
          size: 20.0,
          color: Colors.teal,
        ),
        title: Text(
          label,
          style: const TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}