import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarTextField extends StatefulWidget {
const CalendarTextField({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarTextFieldState createState() => _CalendarTextFieldState();
}

class _CalendarTextFieldState extends State<CalendarTextField> {
  final TextEditingController _controller = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  final bool _dateSelected = false;

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            height: 400,
            width: 350,
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _selectedDate,
              availableCalendarFormats: const {
                CalendarFormat.month:'',
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDate, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                  _controller.text = DateFormat('dd/MM/yyyy').format(_selectedDate);
                });
                Navigator.of(context).pop(_selectedDate);
              },
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, day, focusedDay) {
                  return Container(
                     margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat('dd/MM/yyyy',).format(_selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 47,
          width: 144,
      child: TextField(
        controller: _controller,
        readOnly: true,
        onTap: () => _selectDate(context),
        style: TextStyle(
          fontSize: _dateSelected ? 0:14,
          color: _dateSelected ? Colors.red : Colors.grey, 
        ),
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
          color: Color.fromRGBO(255, 255, 255, 0.25),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Color.fromRGBO(255, 255, 255, 0.25),
            )
          ),
          focusColor: Color.fromRGBO(255, 255, 255, 0.25),
          hintText: 'MM/DD/YY',
          hintStyle: GoogleFonts.poppins(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(255, 255, 255, 0.6),
          ),
          suffixIcon: Icon(
          Icons.calendar_today_outlined,
          color: Color.fromRGBO(255, 255, 255, 0.6),
         ),
        )
      ),
    );
  }
}
