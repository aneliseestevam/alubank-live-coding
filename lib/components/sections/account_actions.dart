import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Text(
            'Ações da conta',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            BoxCard(
                content: _AccountActionsContent(
              icon: Icon(Icons.account_balance_wallet),
              title: "Depositar",
            )),
            BoxCard(
                content: _AccountActionsContent(
              icon: Icon(Icons.cached),
              title: "Transferir",
            )),
            BoxCard(
                content: _AccountActionsContent(
              icon: Icon(Icons.center_focus_strong),
              title: "Ler",
            ))
          ],
        )
      ]),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String title;
  const _AccountActionsContent(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(title),
        ],
      ),
    );
  }
}
