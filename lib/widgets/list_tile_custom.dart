import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  const ListTileCustom({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.onTap,
  });
  final String title;
  final IconData leading;
  final IconData trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        onTap: onTap,
        iconColor: Colors.cyan[800],
        contentPadding: EdgeInsets.all(24),
        splashColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.cyan.shade800),
        ),

        dense: false,
        title: Text(title),
        leading: Icon(leading),
        trailing: Icon(trailing),
      ),
    );
  }
}
