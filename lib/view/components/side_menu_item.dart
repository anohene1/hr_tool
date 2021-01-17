import 'package:flutter/material.dart';
import 'package:hr_tool/view/components/components.dart';
import 'package:hr_tool/view/utilities/utilities.dart';

class SideMenuItem {

  SideMenuItem({
    this.title,
    this.icon,
    this.isSelected = false,
    this.isHovered,
    this.onClick
  });

  final String title;
  final IconData icon;
  bool isSelected;
  bool isHovered;
  final Function onClick;

}