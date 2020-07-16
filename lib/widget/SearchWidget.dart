import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final ValueChanged<String> onSearch;
  final VoidCallback onTab;
  final String hint;
  final EdgeInsetsGeometry margin;

  SearchWidget({Key key, this.hint, this.onSearch, this.onTab, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.all(0.0) : margin,
      width: MediaQuery.of(context).size.width,
      alignment: AlignmentDirectional.center,
      height: 37.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 236, 237),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: CupertinoTextField(
        onSubmitted: onSearch,
        onTap: onTab,
        cursorColor: Color.fromARGB(255, 0, 189, 96),
        placeholder: hint,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(color: Colors.blue,width: 1)
        ),
      ),
    );
  }

  getContainer(BuildContext context, ValueChanged<String> onSubmitted) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: AlignmentDirectional.center,
      height: 40.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 236, 237),
          borderRadius: BorderRadius.circular(24.0)),
      child: CupertinoTextField(
        onSubmitted: onSubmitted,
        cursorColor: Color.fromARGB(255, 0, 189, 96),
//        decoration: InputDecoration(
//          contentPadding: EdgeInsets.zero,
//          border: InputBorder.none,
//          hintText: hint,
//          hintStyle: TextStyle(fontSize: 20),
//          prefixIcon: Icon(
//            Icons.search,
//            size: 29,
//              color: Color.fromARGB(255, 128, 128, 128),
//          )
//        ),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
