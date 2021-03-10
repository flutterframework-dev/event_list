import 'package:flutter/material.dart';
import 'package:event_list/components/event_card.dart';
import 'package:event_list/config/light_theme.dart' as palette;
import 'package:horizontal_calendar_widget/date_helper.dart';
import 'package:horizontal_calendar_widget/horizontal_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatefulWidget {
  const Events({Key key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  DateTime firstDate;
  DateTime lastDate;

  @override
  void initState() {
    super.initState();

    const int days = 30;
    firstDate = toDateMonthYear(DateTime.now());
    lastDate = toDateMonthYear(firstDate.add(Duration(days: days - 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: palette.background,
      appBar: new AppBar(
        title: Text(
          'Event List',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: palette.text,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.add, color: palette.text),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: palette.primary,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: palette.primary,
              border: Border(
                bottom: BorderSide(color: palette.background),
                top: BorderSide(color: palette.background),
              ),
            ),
            child: HorizontalCalendar(
              key: UniqueKey(),
              height: 60,
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              firstDate: firstDate,
              lastDate: lastDate,
              dateTextStyle: TextStyle(color: palette.text, height: 1.6),
              weekDayTextStyle: TextStyle(color: palette.text),
              labelOrder: [LabelType.weekday, LabelType.date],
              selectedDateTextStyle:
                  TextStyle(color: palette.success, height: 1.6),
              selectedWeekDayTextStyle: TextStyle(color: palette.success),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(15.0),
              itemCount: 4,
              itemBuilder: (context, index) => EventCard(),
              separatorBuilder: (context, index) => SizedBox(height: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
