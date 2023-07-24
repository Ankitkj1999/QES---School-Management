
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isLoading;
  final double? height;
  final double? width;
  final double padding;
  final double? borderWidth;
  final double cornerRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  AppButton({
    this.title,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.height,
    this.width,
    required this.padding,
    this.borderWidth,
    required this.cornerRadius,
    this.backgroundColor,
    this.borderColor,
    this.textStyle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: padding,vertical: 20),
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        child: _buildChildWidget(),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          side: BorderSide(

            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
          primary: backgroundColor,
          padding: EdgeInsets.all(0),
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _buildChildWidget() {
    if (isLoading) {
      return CircularProgressIndicator(color: Colors.white);
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leadingIcon ?? Container(),
          title != null
              ? Text(
               title!,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w600, color:Colors.white
              ),
          )
              : Container(),
          trailingIcon ?? Container(),
        ],
      );
    }
  }
}