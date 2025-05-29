import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/panel/panel_view_model.dart';
import 'package:safe_guard/src/view/panel/widget/breaker_status.dart';
import 'package:safe_guard/src/view/panel/widget/panel_dialog.dart';
import 'package:safe_guard/src/view/panel/widget/panel_status.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';
import 'package:safe_guard/theme/component/empty_page.dart';
import 'package:safe_guard/theme/component/pop_button.dart';
import 'package:safe_guard/theme/component/render_appbar.dart';
import 'package:safe_guard/theme/component/toast/toast.dart';

class PanelView extends ConsumerStatefulWidget {
  const PanelView({
    super.key,
    required this.panelList,
    required this.siteName,
  });

  final List<SensorModel> panelList;
  final String siteName;

  @override
  ConsumerState<PanelView> createState() => _PanelViewState();
}

class _PanelViewState extends ConsumerState<PanelView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(tabListener);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref.read(panelViewModelProvider.notifier).addSensorList(widget.panelList);
        widget.panelList.map(
          (e) {
            ref.read(panelViewModelProvider.notifier).getPanelStatusInfo(e.sensorId);
          },
        ).toList();
      },
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      _index = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModelProvider: panelViewModelProvider,
      builder: (ref, viewModel, state) => Scaffold(
        appBar: RenderAppbar(
          siteName: widget.siteName,
          leading: const PopButton(),
          titleSpacing: 0,
          buildingName: widget.panelList[0].buildingName,
          size: 110,
          onRefreshPressed: () => viewModel.getPanelStatusInfo(state.panelList[0].sensorId),
          onSettingPressed: () => Toast.show('홈 화면에서 사용해 주세요.'),
          tabBar: TabBar(
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
              Tab(text: '분전반 정보'),
              Tab(text: '차단기 정보'),
            ],
          ),
        ),
        body: Column(
          children: [
            /// 분전반 선택 화면
            InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => PanelDialog(
                  panelList: widget.panelList,
                  getPanelState: (sensorId) => viewModel.getPanelStatusInfo(sensorId),
                ),
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AssetIcon(
                      'box_1_line',
                      color: ref.color.primary,
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      state.panelName ?? widget.panelList[0].sensorName,
                      style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                    ),
                    const SizedBox(width: 10.0),
                    AssetIcon(
                      'light_arrow_down',
                      color: ref.color.subtext,
                    ),
                  ],
                ),
              ),
            ),

            /// 분전반 상세 정보
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  state.panelStatus == null
                      ? const EmptyPage(text: '분전반 정보를 불러올 수 없습니다.')
                      : PanelStatus(
                          panelStatus: state.panelStatus,
                          onRefreshPressed: (sensorId) => viewModel.getPanelStatusInfo(sensorId),
                          onResetPressed: (sensorId) => viewModel.panelReset(sensorId),
                        ),
                  state.panelStatus == null
                      ? const EmptyPage(text: '분전반 정보를 불러올 수 없습니다.')
                      : BreakerStatus(
                          panelStatus: state.panelStatus,
                          onRefreshPressed: (sensorId) => viewModel.getPanelStatusInfo(sensorId),
                          onResetPressed: (sensorId) => viewModel.panelReset(sensorId),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
