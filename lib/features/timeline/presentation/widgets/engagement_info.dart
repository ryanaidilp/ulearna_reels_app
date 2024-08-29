import 'package:flutter/material.dart';

class EngagementInfo extends StatelessWidget {
  const EngagementInfo({required this.icon, required this.value, super.key});

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Icon(
            icon,
            size: 24,
            color: Colors.white,
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      );
}
