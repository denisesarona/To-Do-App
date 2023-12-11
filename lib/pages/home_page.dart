import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  late DateTime _dateTime; // Use 'late' to indicate late initialization
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _dateTime = DateTime.now();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _getTime() {
    setState(() {
      _dateTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, bottom: 70),
                      child: Text(
                        DateFormat('HH').format(_dateTime), // Show only hours
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, fontSize: 150),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Align to the left
                  crossAxisAlignment: CrossAxisAlignment.start, // Align day of the week to the left
                  children: <Widget>[ // Add space between day and minutes
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70.0, bottom: 70),
                        child: Text(
                          DateFormat('mm').format(_dateTime), // Show only minutes
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white, fontSize: 150),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              DateFormat('EEEE').format(_dateTime), // Show the first day of the week
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              DateFormat('d').format(_dateTime), // Show the second day of the week
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
