import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => CalState();
}

class CalState extends State<Calender> {
  DateTime today = DateTime.now();
  void _OnDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 249, 164),
          ),
          child: TableCalendar(
            rowHeight: screenheight * 0.1,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2024, 01, 01),
            lastDay: DateTime.utc(2030, 12, 31),
            onDaySelected: _OnDaySelected,
            calendarFormat: CalendarFormat.week,
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
            ),
          ),
        ),
        Text('Selected Day:' + today.toString().split(" ")[0]),
        Padding(padding: EdgeInsets.all(5)),
      ],
    );
  }
}
