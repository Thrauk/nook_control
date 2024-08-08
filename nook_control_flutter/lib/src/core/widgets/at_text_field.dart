import 'package:flutter/material.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
import 'package:nook_control_flutter/src/core/styles/text_styles.dart';

enum ATTextFieldLabelPosition { top }

class ATTextField extends StatefulWidget {
  const ATTextField({
    super.key,
    this.enabled = true,
    this.controller,
    this.onChanged,
    this.validator,
    this.autovalidateMode,
    this.labelPosition = ATTextFieldLabelPosition.top,
    this.labelBuilder,
    this.label,
    this.labelUnfocusedColor,
    this.labelStyle,
    this.hint,
    this.hintStyle,
    this.borderRadius = 8.0,
  });

  // ------- Properties

  /// Wether the text field is enabled or not. If the text field is not enabled, modifying the text would not be available.
  final bool enabled;

  /// The controller used by the text field. If provided, the controller should be disposed afterwards.
  /// Otherwise, if no controller is provided, one is going to be created and disposed by the widget.
  final TextEditingController? controller;

  /// Optional callback function when the text value is changed.
  final void Function(String)? onChanged;

  /// Validator function for the Form Field.
  final String? Function(String?)? validator;

  /// The validation mode used by the field.
  final AutovalidateMode? autovalidateMode;

  // -------- Label

  /// Where the text label should be displayed. Defaults to ATTExtFieldLabelPosition.top
  final ATTextFieldLabelPosition labelPosition;

  /// Optional builder to override the default label. Under development.
  final Widget Function(String text)? labelBuilder;

  /// The text to be displayed in the label. Also used in the [labelBuilder] if provided.
  final String? label;

  /// Temporary parameter. Should make a new collection with colors for each state of the text field.
  final Color? labelUnfocusedColor;

  /// Optional override for the label text style while not focused??. IN PROGRESS
  final TextStyle? labelStyle;

  // -------- Hint

  /// The text displayed as hint.
  final String? hint;

  /// Optional override for hint style while not focused??
  final TextStyle? hintStyle;

  @override
  State<ATTextField> createState() => _ATTextFieldState();

  // -------- Design Properties
  final double borderRadius;
}

class _ATTextFieldState extends State<ATTextField> with SingleTickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();
  late final TextEditingController _controller;
  late final bool _shouldDisposeController;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(
      () {
        setState(() {});
      },
    );
    if (widget.controller != null) {
      _controller = widget.controller!;
      _shouldDisposeController = false;
    } else {
      _controller = TextEditingController();
      _shouldDisposeController = true;
    }
  }

  @override
  void dispose() {
    if (_shouldDisposeController) {
      _controller.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Text(
              widget.label!,
              style: ATTextStyles.small10(
                color: _focusNode.hasFocus ? ATColors.blue : widget.labelUnfocusedColor ?? ATColors.light80,
              ),
            ),
          ),
        SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 35,
          child: TextFormField(
            enabled: widget.enabled,
            controller: _controller,
            onChanged: widget.onChanged,
            onTapOutside: (event) {
              _focusNode.unfocus();
            },
            focusNode: _focusNode,
            validator: widget.validator,
            autovalidateMode: widget.autovalidateMode,
            style: ATTextStyles.small12(),
            cursorColor: ATColors.light80,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              isDense: true,
              hintText: widget.hint,
              hintStyle: ATTextStyles.small12(
                color: ATColors.lightHintColor,
              ),
              filled: true,
              fillColor: ATColors.darkGrey,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: ATColors.light80,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: ATColors.blue,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
