import 'package:flutter/material.dart';
import '../../foundations/themes/semantic_colors.dart';

/// Model for items in O1Select component
///
/// Represents a single selectable item with a value and label.
class O1SelectItem<T> {
  /// The value of the item (used internally)
  final T value;

  /// The label to display to the user
  final String label;

  /// Optional leading widget (e.g., icon, avatar)
  final Widget? leading;

  /// Whether this item is enabled
  final bool enabled;

  const O1SelectItem({
    required this.value,
    required this.label,
    this.leading,
    this.enabled = true,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is O1SelectItem &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

/// O1 Design System Select Component
///
/// A dropdown selection component that follows the O1 design system specifications.
/// Uses Flutter's native DropdownButtonFormField for reliability.
///
/// Features:
/// - Single or nullable selection
/// - Custom item rendering with leading widgets
/// - Error and disabled states
/// - Consistent with O1TextField design
///
/// Example:
/// ```dart
/// O1Select<String>(
///   label: 'Producto',
///   placeholder: 'Selecciona un producto',
///   items: [
///     O1SelectItem(value: '1', label: 'Laptop'),
///     O1SelectItem(value: '2', label: 'Mouse'),
///     O1SelectItem(value: '3', label: 'Teclado'),
///   ],
///   value: selectedProduct,
///   onChanged: (value) => setState(() => selectedProduct = value),
/// )
/// ```
class O1Select<T> extends StatelessWidget {
  /// List of items to display in the dropdown
  final List<O1SelectItem<T>> items;

  /// Currently selected value
  final T? value;

  /// Callback when selection changes
  final ValueChanged<T?>? onChanged;

  /// Label text to display above the field
  final String? label;

  /// Placeholder text when no value is selected
  final String? placeholder;

  /// Whether the field is enabled (default: true)
  final bool enabled;

  /// Whether the field is required (shows red asterisk)
  final bool required;

  /// Error message to display
  final String? errorText;

  /// Helper text to display below the field
  final String? helperText;

  /// Whether to show search functionality (not supported with native component)
  final bool searchable;

  /// Maximum height for the dropdown menu
  final double maxMenuHeight;

  const O1Select({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.label,
    this.placeholder,
    this.enabled = true,
    this.required = false,
    this.errorText,
    this.helperText,
    this.searchable = false,
    this.maxMenuHeight = 300,
  });

  @override
  Widget build(BuildContext context) {
    final inputTheme = Theme.of(context).inputDecorationTheme;

    // Build label text
    String? labelText;
    if (label != null) {
      labelText = required ? '$label *' : label;
    }

    return Opacity(
      opacity: enabled ? 1.0 : 0.5,
      child: DropdownButtonFormField<T>(
        value: value,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: inputTheme.labelStyle?.copyWith(
            color: !enabled
                ? O1SemanticColors.inputLabelDisabled
                : errorText != null
                    ? O1SemanticColors.inputLabelError
                    : inputTheme.labelStyle?.color ??
                        O1SemanticColors.inputLabelDefault,
          ),
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 14,
            color: O1SemanticColors.inputTextPlaceholder,
          ),
          errorText: errorText,
          errorStyle: inputTheme.errorStyle,
          helperText: helperText,
          helperStyle: inputTheme.helperStyle?.copyWith(
            color: !enabled
                ? O1SemanticColors.inputHelperTextDisabled
                : O1SemanticColors.inputHelperTextDefault,
          ),
          filled: true,
          fillColor: !enabled
              ? O1SemanticColors.inputBackgroundDisabled
              : O1SemanticColors.inputBackgroundDefault,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: errorText != null
                  ? O1SemanticColors.inputBorderError
                  : O1SemanticColors.inputBorderDefault,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: errorText != null
                  ? O1SemanticColors.inputBorderError
                  : O1SemanticColors.inputBorderDefault,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: errorText != null
                  ? O1SemanticColors.inputBorderError
                  : O1SemanticColors.inputBorderFocus,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: O1SemanticColors.inputBorderError,
              width: 1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: O1SemanticColors.inputBorderError,
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),
        ),
        items: items.map((item) {
          return DropdownMenuItem<T>(
            value: item.value,
            enabled: item.enabled,
            child: Row(
              children: [
                if (item.leading != null) ...[
                  item.leading!,
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Text(
                    item.label,
                    style: TextStyle(
                      fontSize: 14,
                      color: !item.enabled
                          ? O1SemanticColors.textDisabled
                          : O1SemanticColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
        onChanged: enabled ? onChanged : null,
        isExpanded: true,
        icon: Icon(
          Icons.keyboard_arrow_down,
          size: 20,
          color: O1SemanticColors.inputTextPlaceholder,
        ),
        dropdownColor: O1SemanticColors.surfaceCard,
        menuMaxHeight: maxMenuHeight,
        style: TextStyle(
          fontSize: 14,
          color: O1SemanticColors.inputTextDefault,
        ),
      ),
    );
  }
}
