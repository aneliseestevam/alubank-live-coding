import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: BoxCard(content: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Total Gasto'),
        const Text('\$9900.97', style: TextStyle(fontSize: 28)),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
              'Este mês você gastou \$1500 com jogos. Tente baixar este curso!'),
        ),
        TextButton(onPressed: () {}, child: const Text('Diga-me como')),
      ],
    );
  }
}
