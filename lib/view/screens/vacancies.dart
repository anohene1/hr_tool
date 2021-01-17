import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_tool/model/vacancy.dart';
import '../utilities/utilities.dart';
import '../components/components.dart';

class VacanciesScreen extends StatelessWidget {

  final vacancies = allVacancies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
              children: [
                CustomAppBar(
                  title: 'Vacancies',
                  icon: Icons.work_outline_outlined,
                  actions: [
                    IconButton(
                      icon: Icon(Icons.sort, color: Colors.black54, size: 17,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.black54, size: 20,),
                      onPressed: (){},
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    color: gray.withOpacity(0.5),
                    child: ListView.builder(
                      itemCount: vacancies.length,
                      itemBuilder: (context, index) {
                        var vacancy = vacancies[index];
                        return VacancyListItem(
                          title: vacancy.title,
                          time: vacancy.time,
                          successRate: vacancy.successRate,
                          isActive: vacancy.isActive,
                        );
                      },
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

