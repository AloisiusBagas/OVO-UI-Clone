import 'package:flutter/material.dart';
import 'package:ovo_ui/Constant/Color.dart';
import 'package:ovo_ui/Screen/TopUp/InstantTopUp/InstanTopUp.dart';
import 'package:ovo_ui/Screen/TopUp/MetodeLain/Metodelain.dart';

class TopUpPage extends StatefulWidget {
  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkpurple,
        elevation: 0,
        title: Text("Top Up"),
        bottom: new TabBar(
            indicatorColor: cyantext,
            indicatorWeight: 3.0,
            controller: _tabController,
            labelPadding: const EdgeInsets.symmetric(
              vertical: 13.0,
            ),
            labelStyle:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
            tabs: [
              const Text("Instan Top Up"),
              const Text("Metode Lain"),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        new InstantTopUp(),
        new MetodeLain(),
      ]),
    );
  }
}
