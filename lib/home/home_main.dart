import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:novel/main.dart';

class HomePage extends StatefulWidget{

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();

}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TabBar(
            labelColor: ProjectColor.darkGray,
            labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            unselectedLabelColor: ProjectColor.gray,
            indicatorColor: ProjectColor.secondary,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            indicatorPadding: const EdgeInsets.fromLTRB(8, 0, 8, 5),
            tabs: const [
              Tab(text: '精选'),
              Tab(text: '女生'),
              Tab(text: '男生'),
              Tab(text: '漫画'),
            ],
          ),
        ),
        backgroundColor: ProjectColor.white,
        elevation: 0,
        ),
      body: const TabBarView(children: [

      ]),
      ),
    );
  }

}