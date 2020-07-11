import 'package:flutter/cupertino.dart';
import 'package:my_movie_memoir_flutter/widget/MainPage.dart';

import '../utils.dart';

class MainPageViews extends StatefulWidget{
  @override
  State<MainPageViews> createState() {
    return MainPageViewsState();
  }
}

class MainPageViewsState extends State<MainPageViews>{
  var bottomNavigation=[
    TabInformation("home",getIconImage('assets/images/home_select.png'),getIconImage('assets/images/home_unselect.png'),MainPage()),
    TabInformation("search", getIconImage('assets/images/search_select.png'),getIconImage('assets/images/search_unselect.png'),Text("123"))
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
            return bottomNavigation[position].page;
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
  Widget page;

  TabInformation(String tabName, Image selectIcon, Image unselectedIcon,Widget page) {
    this.tabName = tabName;
    this.selectIcon = selectIcon;
    this.unselectedIcon = unselectedIcon;
    this.page=page;
  }
}