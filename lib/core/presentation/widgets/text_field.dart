import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/core/domain/utils/utils.dart';
import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  const KTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength,
    this.readOnly = false,
    this.onTap,
    this.keyboardType,
    this.keyboardAppearance,
    this.textCapitalization,
    this.autovalidateMode,
    this.validator,
    this.autofocus = false,
    this.autocorrect = true,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autofillHints,
    this.onChanged,
    this.prefix,
    this.prefixIcon,
    this.suffixIcon,
    required this.hasError,
    this.error,
    this.fillColor,
    this.hint,
    this.borderRadius,
    this.textInputAction,
    this.textAlign = TextAlign.start,
    this.onSaved,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final int minLines;
  final int maxLines;
  final int? maxLength;
  final bool readOnly;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final Brightness? keyboardAppearance;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final bool autofocus;
  final bool autocorrect;
  final bool obscureText;
  final bool enableSuggestions;
  final Iterable<String>? autofillHints;
  final String? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool hasError;
  final String? error;
  final Color? fillColor;
  final String? hint;
  final BorderRadius? borderRadius;
  final TextAlign textAlign;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius:
            borderRadius ?? BorderRadius.circular(16),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        readOnly: readOnly,
        onTap: onTap,
        keyboardType: keyboardType,
        keyboardAppearance: keyboardAppearance,
        textInputAction: textInputAction,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        autovalidateMode: autovalidateMode,
        validator: validator,
        autofocus: autofocus,
        autocorrect: autocorrect,
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autofillHints: autofillHints,
        onChanged: onChanged,
        textAlign: textAlign,
        onSaved: onSaved,
        onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
          border: Utils.getBorder(borderRadius: borderRadius),
          enabledBorder: Utils.getBorder(borderRadius: borderRadius),
          focusedBorder: Utils.getBorder(borderRadius: borderRadius),
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 12.0,
                  ),
                  child: prefixIcon,
                )
              : prefix != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(prefix!),
                    )
                  : null,
          prefixIconConstraints:
              const BoxConstraints(minWidth: 4, minHeight: 0),
          suffixIcon: suffixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                    right: 24.0,
                  ),
                  child: suffixIcon,
                )
              : null,
          hintText: hint,
          hintMaxLines: 1,
          hintStyle: AppTextStyles.body2,
          errorText: error,
          errorMaxLines: 2,
          errorStyle: AppTextStyles.body2.copyWith(color: Colors.red),
          errorBorder: Utils.getErrorBorder(borderRadius: borderRadius),
          focusedErrorBorder: Utils.getErrorBorder(borderRadius: borderRadius),
        ),
      ),
    );
  }
}
