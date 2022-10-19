import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/sections/account_actions.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';
import '../components/sections/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          RecentActivity(),
          AccountActions(),
        ],
      ),
    );
  }
}
