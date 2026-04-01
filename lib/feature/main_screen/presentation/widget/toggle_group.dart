import 'package:flutter/material.dart';

class ToggleGroup extends StatelessWidget {
  final String label;
  final String current;
  final List<String> options;
  final ValueChanged<String>? onChanged;

  const ToggleGroup({
    super.key,
    required this.label,
    required this.current,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xFF1E293B),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: options.map((option) {
                final bool isActive = current == option;
                final bool isDisabled = onChanged == null;

                return Expanded(
                  child: GestureDetector(
                    onTap: isDisabled ? null : () => onChanged!(option),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: isActive ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: isActive
                            ? [
                                BoxShadow(
                                  color: Colors.black.withAlpha(5),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : [],
                      ),
                      child: Text(
                        option,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: _getTextColor(isActive, isDisabled, label),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  /// Helper to match the specific colors for Water (Blue) vs Sun (Orange)
  Color _getTextColor(bool isActive, bool isDisabled, String label) {
    if (isDisabled) return Colors.grey;
    if (!isActive) return const Color(0xFF64748B);

    // Custom colors based on the label (Water vs Sunlight)
    if (label.contains('Water')) return const Color(0xFF3B82F6);
    if (label.contains('Sunlight')) return const Color(0xFFF59E0B);

    return Colors.black;
  }
}
