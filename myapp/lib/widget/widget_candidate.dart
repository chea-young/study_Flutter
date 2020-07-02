import 'package:flutter/material.dart';

class CandWidget extends StatefulWidget {
  VoidCallback tap; //VoidCallback는 onTap을 전달해주는 기능
  String text;
  int index;
  double width;
  bool answerState;

  CandWidget({this.tap, this.index, this.width, this.text, this.answerState});
  _CandWidgetState createState() => _CandWidgetState();
}

class _CandWidgetState extends State<CandWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      height: widget.width * 0.1,
      padding: EdgeInsets.fromLTRB(widget.width * 0.048, widget.width * 0.024,
          widget.width * 0.048, widget.width * 0.024),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.blue[100]),
          //선택되었을 때와 선택되지 않았을 때 색을 다르게 한다.
          color: widget.answerState ? Colors.pink[200] : Colors.white),
      child: InkWell(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.width * 0.035,
              color: widget.answerState ? Colors.white : Colors.black,
            ),
          ),
          onTap: () {
            setState(() {
              widget.tap();
              widget.answerState = !widget.answerState;
            });
          }),
    );
  }
}
