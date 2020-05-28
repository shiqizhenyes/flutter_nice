

import 'package:flutter/material.dart';

class TapBoxC extends StatefulWidget {

  TapBoxC({Key key, this.active: false, @required this.onChanged}) : super(key: key);
  
  bool active = false;
  final ValueChanged<bool> onChanged;
  
  @override
  State<StatefulWidget> createState() => _TapBoxCState();

}

class _TapBoxCState extends State<TapBoxC> {

  bool _hightLight = false;

  void _handleTapDown(TapDownDetails tapDownDetails) {
    setState(() {
      _hightLight = true;
    });
  }
  
  void _handleTapUp(TapUpDetails tapUpDetails) {
    setState(() {
      _hightLight = false;
    });
  }

  void _handleTap() {
    setState(() {
      widget.onChanged(!widget.active);
    });
  }

  void _handleTapCancel() {
    setState(() {
      _hightLight = false;
    });
  }

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTapDown: _handleTapDown,
     onTapUp: _handleTapUp,
     onTap: _handleTap,
     onTapCancel: _handleTapCancel,
     child: Container(
       child: Center(
         child: Text(
           widget.active ? "Active" : "Inactive",
           style: TextStyle(fontSize: 20.0, color: Colors.white),
         ),
       ),
       width: 100.0, height: 100.0,
       decoration: BoxDecoration(
         color: widget.active ? Colors.green[700]: Colors.grey[600],
         border: _hightLight ? Border.all(
           color: Colors.teal[700],
           width: 10.0,
         ): null 
       ),
     ),
   );
  }


}