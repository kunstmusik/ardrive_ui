import 'package:ardrive_ui/ardrive_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ArDriveIcon extends StatelessWidget {
  const ArDriveIcon({
    super.key,
    required this.path,
    this.color,
    this.size = 20,
  });

  final String path;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      color: color ?? ArDriveTheme.of(context).themeData.colors.themeFgOnAccent,
      path,
      height: size,
      width: size,
      package: 'ardrive_ui',
    );
  }
}

class ArDriveIcons {
  static ArDriveIcon closeIconCircle({double? size}) =>
      const ArDriveIcon(path: 'assets/icons/close_icon_circle.svg');
  static ArDriveIcon closeIcon({double? size}) =>
      const ArDriveIcon(path: 'assets/icons/close_icon.svg');
  static ArDriveIcon uploadCloud({double? size, Color? color}) => ArDriveIcon(
      path: 'assets/icons/cloud_upload.svg', size: size, color: color);
  static ArDriveIcon checkSuccess({double? size, Color? color}) => ArDriveIcon(
      path: 'assets/icons/check_success.svg', size: size, color: color);
  static ArDriveIcon warning({double? size, Color? color}) =>
      ArDriveIcon(path: 'assets/icons/warning.svg', size: size, color: color);
  static ArDriveIcon checked({double? size, Color? color}) =>
      ArDriveIcon(path: 'assets/icons/checked.svg', size: size, color: color);
  static ArDriveIcon indeterminateIndicator({double? size, Color? color}) =>
      ArDriveIcon(
        path: 'assets/icons/indeterminate_indicator.svg',
        size: size,
        color: color,
      );

  static ArDriveIcon chevronRight({double? size, Color? color}) => ArDriveIcon(
        path: 'assets/icons/chevron_right.svg',
        size: size,
        color: color,
      );
  static ArDriveIcon chevronLeft({double? size, Color? color}) => ArDriveIcon(
        path: 'assets/icons/chevron_left.svg',
        size: size,
        color: color,
      );

  static ArDriveIcon chevronUp({double? size, Color? color}) => ArDriveIcon(
        path: 'assets/icons/chevron_up.svg',
        size: size,
        color: color,
      );
  static ArDriveIcon chevronDown({double? size, Color? color}) => ArDriveIcon(
        path: 'assets/icons/chevron_down.svg',
        size: size,
        color: color,
      );
  static ArDriveIcon dots({double? size, Color? color}) => ArDriveIcon(
        path: 'assets/icons/dots.svg',
        size: size,
        color: color,
      );
}