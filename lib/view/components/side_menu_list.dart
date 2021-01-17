import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_tool/view/components/components.dart';

List<SideMenuItem> sideMenuList = [
  SideMenuItem(
    title: 'Overview',
    icon: Icons.dashboard_outlined,
    isSelected: true,
  ),
  SideMenuItem(
    title: 'Stats',
    icon: Icons.bar_chart,
  ),
  SideMenuItem(
    title: 'Vacancies',
    icon: Icons.work_outline,
  ),
  SideMenuItem(
    title: 'Contacts',
    icon: Icons.person,
  ),
  SideMenuItem(
    title: 'Messaging',
    icon: CupertinoIcons.conversation_bubble,
  ),
  SideMenuItem(
    title: 'Wallet',
    icon: Icons.account_balance_wallet_outlined,
  ),
];