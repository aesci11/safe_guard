import 'package:flutter/material.dart';
import 'package:safe_guard/src/model/system_model.dart';
import 'package:safe_guard/src/view/history/widget/system_list_card.dart';

class SystemList extends StatelessWidget {
  const SystemList({
    super.key,
    required this.systemList,
  });

  final List<SystemModel> systemList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: SystemListCard(
          system: systemList[index],
        ),
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: systemList.length,
    );
  }
}
