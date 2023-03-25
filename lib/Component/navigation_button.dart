import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  NavigationButton({super.key, required this.iconData, required this.label,required this.selected});
  IconData iconData;
  String label;
  bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 38,
            color: selected ? Colors.white : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 14,
            color: selected ? Colors.white : Colors.grey),
          )
        ],
      ),
    );
  }
}
