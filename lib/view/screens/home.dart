import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hr_tool/view/components/components.dart';
import 'package:hr_tool/view/screens/screens.dart';
import 'package:hr_tool/view/utilities/utilities.dart';

var sideMenuItems = sideMenuList;

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: gray.withOpacity(0.5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'HR Tool',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(CupertinoIcons.search, color: Colors.black54, size: 19,),
                    onPressed: (){},
                  ),
                  HorizontalSpacing(15),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                  HorizontalSpacing(80),
                  IconButton(
                    icon: Icon(CupertinoIcons.bell, color: Colors.black54, size: 19,),
                    onPressed: (){},
                  ),
                  HorizontalSpacing(20),
                  Container(
                    width: 45,
                    height: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/contact1.jpg', fit: BoxFit.cover,),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 200,
                      child: ListView.builder(
                        itemCount: sideMenuItems.length,
                        itemBuilder: (context, index) {
                          var sideMenuItem = sideMenuItems[index];
                          return MouseRegion(
                            cursor: SystemMouseCursors.click,
                            onHover: (PointerHoverEvent evt) {
                              setState(() {
                                sideMenuItem.isHovered = true;
                              });
                            },
                            onExit: (PointerExitEvent evt) {
                              setState(() {
                                sideMenuItem.isHovered = false;
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  sideMenuItems.forEach((element) { element.isSelected = false; });
                                });
                                sideMenuItem.isSelected = true;
                                setIndex(index);
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                                margin: EdgeInsets.only(bottom: 15),
                                decoration: BoxDecoration(
                                    color: sideMenuItem.isSelected == true || sideMenuItem.isHovered == true ? purple.withOpacity(0.2) : null,
                                    borderRadius: BorderRadius.circular(7)
                                ),
                                child: Row(
                                  children: [
                                    Icon(sideMenuItem.icon, size: 18, color: sideMenuItem.isSelected == true || sideMenuItem.isHovered == true ? purple : Colors.black,),
                                    HorizontalSpacing(10),
                                    Expanded(
                                      child: Text(
                                        sideMenuItem.title,
                                        style: TextStyle(
                                            color: sideMenuItem.isSelected == true || sideMenuItem.isHovered == true ? purple : Colors.black,
                                            fontWeight: sideMenuItem.isSelected == true || sideMenuItem.isHovered == true ? FontWeight.bold : null
                                        ),
                                      ),
                                    ),
                                    sideMenuItem.title == 'Messaging' ? CircleAvatar(
                                      backgroundColor: purple,
                                      radius: 8,
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10
                                        ),
                                      ),
                                    ) : SizedBox.shrink()
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      // child: Column(
                      //   children: [
                      //     SideMenuItem(
                      //       title: 'Overview',
                      //       icon: Icons.dashboard_outlined,
                      //       isSelected: true,
                      //       onClick: () {
                      //         setIndex(0);
                      //       }
                      //     ),
                      //     SideMenuItem(
                      //       title: 'Stats',
                      //       icon: Icons.bar_chart,
                      //       onClick: () {
                      //         setIndex(1);
                      //       },
                      //     ),
                      //     SideMenuItem(
                      //       title: 'Vacancies',
                      //       icon: Icons.work_outline,
                      //       onClick: () {
                      //         setIndex(2);
                      //       },
                      //     ),
                      //     SideMenuItem(
                      //       title: 'Contacts',
                      //       icon: Icons.person,
                      //       onClick: () {
                      //         setIndex(3);
                      //       },
                      //     ),
                      //     SideMenuItem(
                      //       title: 'Messaging',
                      //       icon: CupertinoIcons.conversation_bubble,
                      //       onClick: () {
                      //         setIndex(4);
                      //       },
                      //     ),
                      //     SideMenuItem(
                      //       title: 'Wallet',
                      //       icon: Icons.account_balance_wallet_outlined,
                      //       onClick: () {
                      //         setIndex(5);
                      //       },
                      //     ),
                      //   ],
                      // ),
                    ),
                    Container(
                      width: 1400,
                      child: IndexedStack(
                        index: _currentIndex,
                        children: [
                          OverviewScreen(),
                          StatsScreen(),
                          VacanciesScreen(),
                          ContactsScreen(),
                          MessagingScreen(),
                          WalletScreen()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

