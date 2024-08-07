import 'package:flutter/material.dart';

enum ATTextFieldLabelPosition { top }

class ATTextField extends StatefulWidget {
  const ATTextField({
    super.key,
    this.enabled = true,
    this.textEditingController,
    this.labelPosition = ATTextFieldLabelPosition.top,
    this.labelBuilder,
    this.label,
    this.labelStyle
  });

  // ------- Properties

  /// Wether the text field is enabled or not. If the text field is not enabled, modifying the text would not be available.
  final bool enabled;

  /// The controller used by the text field. If provided, the controller should be disposed afterwards.
  /// Otherwise, if no controller is provided, one is going to be created and disposed by the widget.
  final TextEditingController? textEditingController;

  // -------- Label

  /// Where the text label should be displayed. Defaults to ATTExtFieldLabelPosition.top
  final ATTextFieldLabelPosition labelPosition;

  /// Optional builder to override the default label. Under development.
  final Widget Function(String text)? labelBuilder;

  /// The text to be displayed in the label. Also used in the [labelBuilder] if provided.
  final String? label;

  /// Optional override for the label text style.
  final TextStyle? labelStyle;

  @override
  State<ATTextField> createState() => _ATTextFieldState();
}

class _ATTextFieldState extends State<ATTextField> {
  late final TextEditingController _controller;
  late final bool _shouldDisposeController;

  @override
  void initState() {
    super.initState();
    if (widget.textEditingController != null) {
      _controller = widget.textEditingController!;
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
    );
  }
}
