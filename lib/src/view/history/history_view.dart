import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/history/history_view_model.dart';
import 'package:safe_guard/src/view/history/widget/history_list.dart';
import 'package:safe_guard/src/view/history/widget/history_list_contents.dart';
import 'package:safe_guard/src/view/history/widget/system_list.dart';
import 'package:safe_guard/src/view/history/widget/system_list_contents.dart';

class HistoryView extends ConsumerStatefulWidget {
  const HistoryView({
    super.key,
    required this.siteName,
  });

  final String siteName;

  @override
  ConsumerState<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends ConsumerState<HistoryView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(historyViewModelProvider.notifier).getAlarmHistoryList();
      ref.read(historyViewModelProvider.notifier).getSystemHistoryList();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> historyContents = ['장소', '이벤트', '진행사항', '발생시간', '확인시간', '알람'];
    List<String> systemContents = ['사용자', '시스템유형', '로그유형', '발생시간'];
    return BaseView(
      viewModelProvider: historyViewModelProvider,
      builder: (ref, viewModel, state) => DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              /// 탭바
              Container(
                decoration: BoxDecoration(
                  color: ref.color.onPrimary,
                ),
                child: TabBar(
                  controller: _tabController,
                  labelStyle: ref.typo.headline4.copyWith(
                    fontWeight: ref.typo.semiBold,
                  ),
                  unselectedLabelStyle: ref.typo.headline4.copyWith(
                    color: ref.color.subtext,
                    fontWeight: ref.typo.semiBold,
                  ),
                  indicatorColor: ref.color.text,
                  indicatorSize: TabBarIndicatorSize.tab,
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  tabs: const [
                    Tab(text: '이벤트 이력'),
                    Tab(text: '시스템 이력'),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),

              /// 탭바 페이지
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// 이벤트 이력
                    CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ref.color.inactiveContainer,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Row(
                                  children: historyContents.asMap().entries.map((e) {
                                    int index = e.key;
                                    String contents = e.value;
                                    return HistoryListContents(
                                        contents: contents, index: index, indexLength: historyContents.length);
                                  }).toList(),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 600,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ref.color.onPrimary,
                                  ),
                                  child: HistoryList(historyList: state.alarmHistoryList),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    /// 시스템 이력
                    CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ref.color.inactiveContainer,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Row(
                                  children: systemContents.asMap().entries.map((e) {
                                    int index = e.key;
                                    String contents = e.value;
                                    return SystemListContents(
                                        contents: contents, index: index, indexLength: systemContents.length);
                                  }).toList(),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ref.color.onPrimary,
                                  ),
                                  child: SystemList(systemList: state.alarmSystemList),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
