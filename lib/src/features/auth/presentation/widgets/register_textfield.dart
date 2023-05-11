// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

// import '../../../../core/constants/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  String hintText;
  String label;
  Color? labelColor;
  FormFieldValidator? validator;
  Function(String)? onSaved;
  Function()? onTap;
  Color? fillingColor;
  bool autofocus;
  bool isEnabled;
  TextInputType? keyboardType;

  int? maxLines;
  TextInputType? textInputType;
  TextEditingController? controller;
  List<TextInputFormatter>? inputFormatters;

  CustomTextFormField({
    Key? key,
    this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.label = '',
    this.labelColor = Colors.transparent,
    this.fillingColor,
    this.hintText = '',
    this.obscureText = false,
    this.controller,
    this.validator,
    this.onSaved,
    this.onTap,
    this.autofocus = false,
    this.isEnabled = true,
    this.keyboardType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
              fontSize: 18,
              color: widget.labelColor,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600),
        ),
        const Gap(8),
        TextFormField(
          onTap: widget.onTap,
          enabled: widget.isEnabled,
          inputFormatters: widget.inputFormatters,
          controller: widget.controller,
          maxLines: widget.maxLines ?? 1,
          obscureText: widget.obscureText,
          keyboardType: widget.textInputType,
          validator: widget.validator,
          decoration: InputDecoration(
            errorStyle: const TextStyle(height: 0, color: Colors.red),
            contentPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0.8,
                style: BorderStyle.solid,
              ),
            ),
            fillColor: widget.fillingColor ?? const Color(0xffF5F5F5),
            filled: true,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: const Color(0xff00007e).withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w600),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0.8,
                    style: BorderStyle.solid)),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0.8,
                    style: BorderStyle.solid)),
            errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0.8,
                    style: BorderStyle.solid)),
          ),
        ),
      ],
    );
  }
}
