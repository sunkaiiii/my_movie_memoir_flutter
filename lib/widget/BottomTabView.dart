import 'package:flutter/cupertino.dart';

import '../utils.dart';

class BottomTabView extends StatefulWidget{
  @override
  State<BottomTabView> createState() {
    return BottomTabViewState();
  }
}

class BottomTabViewState extends State<BottomTabView>{
  var bottomNavigation=[
    TabInformation("home",getIconImage('assets/images/home_select.png'),getIconImage('assets/images/home_unselect.png')),
    TabInformation("search", getIconImage('assets/images/search_select.png'),getIconImage('assets/images/search_unselect.png'))
  ];
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items:getBottomNavigation(),
        currentIndex: _tabIndex,
        onTap: (index){
          setState((){
            _tabIndex=index;
          });
        },
      ),
      tabBuilder: (context,position){
        return CupertinoTabView(
          builder: (context){
            return Text("123");
          },
        );
      },
    );
  }

  getBottomNavigation() {
    List<BottomNavigationBarItem> list = List();
    bottomNavigation.forEach((element) {
      list.add(BottomNavigationBarItem(icon: _tabIndex==bottomNavigation.indexOf(element)?element.selectIcon:element.unselectedIcon,title: Text(element.tabName)));
    });
    return list;
  }
}

class TabInformation {
  String tabName;
  Image selectIcon;
  Image unselectedIcon;

  TabInformation(String tabName, Image selectIcon, Image unselectedIcon) {
    this.tabName = tabName;
    this.selectIcon = selectIcon;
    this.unselectedIcon = unselectedIcon;
  }
}