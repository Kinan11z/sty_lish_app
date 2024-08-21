import 'package:flutter/material.dart';
import 'package:sty_lish_app/core/utils/app_colors.dart';
import 'package:sty_lish_app/core/utils/style_text.dart';
import 'package:sty_lish_app/core/widgets/visibility_icon.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.icon,
    required this.labelText,
    this.isPassword = false,
  });

  final IconData icon;
  final String labelText;
  final bool isPassword;

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword && !_isPasswordVisible,
      decoration: InputDecoration(
        fillColor: AppColors.greyTextField,
        filled: true,
        prefixIcon: Icon(
          widget.icon,
          color: AppColors.greyTextFieldIcon,
        ),
        labelText: widget.labelText,
        labelStyle: AppStyles.styleMedium12(context),
        suffixIcon: widget.isPassword
            ? VisibilityIcon(
                isVisibility: _isPasswordVisible,
                toggleVisibility: _togglePasswordVisibility,
              )
            : const SizedBox(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.greyTextFieldBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.greyTextFieldBorder),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
