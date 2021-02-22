import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {

  final String buttonText;
  final Function callback;

  const OrangeButton({
    Key key, 
    @required this.buttonText, 
    @required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
             elevation: 2,
             highlightElevation: 5,
             color: Color(0xffE34E22),
             shape: StadiumBorder(),
             onPressed: this.callback,
             child: Container(
               height: 50,
               child: Center(child: Text(this.buttonText,style:TextStyle(color: Colors.white,fontSize: 18)),),
            ),
          ),
    );
  }
}