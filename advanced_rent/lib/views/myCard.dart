import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  final String carName ;
  final String imgUrl ;
  final String remainingTime ;
  final double totalTicket ;

  const Mycard({
  required this.carName,
  required this.imgUrl,
  required this.remainingTime,
  required this.totalTicket});

  @override
  State<Mycard> createState() => _myCardState();
}

class _myCardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.grey
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(widget.imgUrl),
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}