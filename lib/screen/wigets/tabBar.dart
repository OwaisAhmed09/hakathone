import 'package:flutter/material.dart';
import 'package:hacathon/screen/other%20screen/itemScreen.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class TabBarPages extends StatefulWidget {
  TabBarPages({super.key});

  @override
  State<TabBarPages> createState() => _TabBarPagesState();
}

class _TabBarPagesState extends State<TabBarPages>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.00,
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: SingleChildScrollView(
          child: TabBar(
              controller: _tabController,
              indicatorWeight: 2.00,
              unselectedLabelColor: SolidColors.Top_Text_Product_text,
              labelColor: SolidColors.buttonColler,
              indicatorColor: SolidColors.buttonColler,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
              labelPadding: const EdgeInsets.only(right: 10),
              tabs: [
                Tab(
                  child: GestureDetector(
                    child: Text(
                      textFile.toppick,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Carditem(),
                          ));
                    },
                  ),
                ),
                Tab(
                  text: textFile.indoor,
                ),
                Tab(
                  text: textFile.outdoor,
                ),
                Tab(
                  text: textFile.seeds,
                ),
                Tab(
                  text: textFile.planters,
                ),
              ]),
        ),
      ),
    );
  }
}
