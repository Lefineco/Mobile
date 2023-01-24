import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextInputAction? textInputAction,
    String? helperText,
    TextInputType? keyboardType,
    int? minLines,
    int? maxLines,
    String? labelText,
    bool isObscureText = false,
    bool readOnly = false,
    bool enableInteractiveSelection = false,
    String? Function(String?)? validator,
    TextEditingController? controller,
    String? errorText,
    bool enabled = true,
  })  : _hintText = hintText,
        _errorText = errorText,
        _textInputAction = textInputAction,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _helperText = helperText,
        _labelText = labelText,
        _validator = validator,
        _isObscureText = isObscureText,
        _controller = controller,
        _minLines = minLines,
        _keyboardType = keyboardType,
        _maxLines = maxLines,
        _readOnly = readOnly,
        _enableInteractiveSelection = enableInteractiveSelection,
        _enabled = enabled,
        super(key: key);

  final TextEditingController? _controller;
  final TextInputAction? _textInputAction;
  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final String? _helperText;
  final String? _errorText;
  final String? _labelText;
  final bool _isObscureText;
  final String? Function(String?)? _validator;

  final int? _minLines;
  final TextInputType? _keyboardType;
  final int? _maxLines;
  final bool _readOnly;
  final bool _enableInteractiveSelection;
  final bool _enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: _controller,
      obscureText: _isObscureText,
      minLines: _minLines,
      maxLines: _maxLines,
      enabled: _enabled,
      enableInteractiveSelection: _enableInteractiveSelection,
      readOnly: _readOnly,
      textInputAction: _textInputAction,
      keyboardType: _keyboardType,
      decoration: InputDecoration(
        labelStyle: Theme.of(context).textTheme.headline6?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white.withOpacity(.5),
            fontFamily: Constants.fontFamily1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.white, width: 1),
        ),
        fillColor: Colors.white.withOpacity(.1),
        filled: true,
        errorText: _errorText,
        helperText: _helperText,
        hintText: _hintText,
        labelText: _labelText,
        prefixIcon: _prefixIcon,
        suffixIcon: _suffixIcon,
      ),
      validator: _validator,
    );
  }
}
