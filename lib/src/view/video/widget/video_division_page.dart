import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/video/widget/cctv_play.dart';

class VideoDivisionPage extends ConsumerStatefulWidget {
  const VideoDivisionPage({
    super.key,
    required this.pageList,
    required this.itemPerPage,
  });

  final List<String> pageList;
  final int itemPerPage;

  @override
  ConsumerState<VideoDivisionPage> createState() => _VideoDivisionPageState();
}

class _VideoDivisionPageState extends ConsumerState<VideoDivisionPage> {
  List<String> cctvUrlName(int index) {
    final result = widget.pageList[index].split('#');
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.itemPerPage == 1
            ? 1
            : widget.itemPerPage == 4
                ? 2
                : 3,
        childAspectRatio: 16 / 9,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemCount: widget.itemPerPage,
      itemBuilder: (context, index) {
        if (widget.pageList.length < widget.itemPerPage) {
          final List<String> emptyList = List.generate(
              widget.itemPerPage, (index) => index < widget.pageList.length ? widget.pageList[index] : 'Empty');
          return emptyList[index] == 'Empty'
              ? Container(
                  decoration: BoxDecoration(color: ref.color.text),
                )
              : CctvPlay(cctvUrl: cctvUrlName(index)[0], cctvName: cctvUrlName(index)[1]);
        }
        return CctvPlay(cctvUrl: cctvUrlName(index)[0], cctvName: cctvUrlName(index)[1]);
      },
    );
  }
}
