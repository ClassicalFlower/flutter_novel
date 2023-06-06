import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novel/main.dart';

class RootPage extends StatefulWidget{
  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() => RootPageState();
}

class RootPageState extends State<RootPage>{
  int tabIndex = 1;
  bool isFinishSetup = false;
  final List<Image> _tabImages = [
    Image.asset("res/tab_bookshelf_n.png"),
    Image.asset("res/tab_bookshelf_n.png"),
    Image.asset("res/tab_bookshelf_n.png"),
  ];
  final List<Image> _tabSelectImages = [
    Image.asset("res/tab_bookshelf_p.png"),
    Image.asset("res/tab_bookshelf_p.png"),
    Image.asset("res/tab_bookshelf_p.png"),
  ];
  
  @override
  Widget build(BuildContext context) {
    if(!isFinishSetup){
      return Container();
    }
    return Scaffold(
      body: const IndexedStack(),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: ProjectColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIconByIndex(0),label: "书架"),
          BottomNavigationBarItem(icon: getTabIconByIndex(1),label: "书城"),
          BottomNavigationBarItem(icon: getTabIconByIndex(2),label: "我的"),
        ],
        currentIndex: tabIndex,
        onTap: (index){
          setState(() {
            tabIndex = index;
          });
        },
      ),
    );
  }

  Image getTabIconByIndex(int index){
    if (index == tabIndex){
      return _tabSelectImages[index];
    } else {
      return _tabImages[index];
    }
  }
}