import 'package:flutter/material.dart';

class StatRow extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const StatRow({
    super.key,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        spacing: 4,
        children: [
          SizedBox(
            width: 60,
            child: Text(label, style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: value / 100,
                backgroundColor: Colors.grey.shade300,
                color: color,
                minHeight: 8,
              ),
            ),
          ),
          SizedBox(
            width: 40,
            child: Text('$value%', textAlign: TextAlign.right),
          ),
        ],
      ),
    );
  }
}
