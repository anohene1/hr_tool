import 'package:flutter/material.dart';
import '../utilities/utilities.dart';
import '../components/components.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Stats',
                icon: Icons.bar_chart,
                actions: [
                  IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.black54, size: 20,),
                    onPressed: (){},
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                    children: [
                      Container(
                        height: 450,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: [
                            StatCard(
                              title: 'Reach',
                              number: 17,
                              icon: Icons.show_chart,
                              hasIncrement: true,
                              increment: 12,
                              desc: 'New Candidates',
                              color: teal,
                              hasBackgroundColor: true,
                            ),
                            StatCard(
                              title: 'Savings',
                              number: 23.57,
                              isPercent: true,
                              icon: Icons.show_chart,
                              desc: 'Some Value lol',
                              color: purple,
                            ),
                            StatCard(
                              title: 'Time',
                              number: 32,
                              icon: Icons.show_chart,
                              desc: 'Time to fill(avg)',
                              color: blue,
                            ),
                            StatCard(
                              title: 'Coverage',
                              number: 540,
                              icon: Icons.person,
                              desc: 'Active Recruiters',
                              color: yellow,
                            ),
                          ],
                        ),
                      ),
                      VerticalSpacing(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.edit_outlined, color: Colors.grey, size: 20,)
                        ],
                      ),
                      VerticalSpacing(20),
                      StatListItem(
                        title: 'Max. Commission',
                        value: '30%',
                      ),
                      StatListItem(
                        title: 'Min. money back period(months)',
                        value: '3',
                      ),
                      StatListItem(
                        title: 'Min. Recruiter Rating',
                        value: '4/5',
                      )
                      , StatListItem(
                        title: 'Max. Profiles/Position',
                        value: '4/5',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
