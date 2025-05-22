import 'package:flutter/material.dart';
import 'package:safe_guard/src/model/history_model.dart';
import 'package:safe_guard/src/view/history/widget/history_list_card.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({
    super.key,
    required this.historyList,
  });

  final List<HistoryModel> historyList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: HistoryListCard(
          history: historyList[index],
        ),
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: historyList.length,
    );
  }
}
