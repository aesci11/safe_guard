import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/building_model.dart';
import 'package:safe_guard/src/model/building_status_list.dart';
import 'package:safe_guard/src/model/site_model.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/building/building_view_model.dart';
import 'package:safe_guard/src/view/building/widget/building_card.dart';
import 'package:safe_guard/src/view/home/widget/warning_box.dart';
import 'package:safe_guard/theme/res/layout.dart';

class BuildingView extends ConsumerStatefulWidget {
  const BuildingView({
    super.key,
    required this.buildingList,
    required this.buildingStatusList,
    this.siteModel,
  });

  /// 빌딩 리스트
  final List<BuildingModel> buildingList;

  /// 빌딩 상태 리스트
  final List<BuildingStatusList> buildingStatusList;

  /// 사이트 정보
  final SiteModel? siteModel;

  @override
  ConsumerState<BuildingView> createState() => _BuildingViewState();
}

class _BuildingViewState extends ConsumerState<BuildingView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(buildingViewModelProvider.notifier).getAlarmHistoryList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModelProvider: buildingViewModelProvider,
      builder: (ref, viewModel, state) => context.layout(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 건물 이미지
            widget.siteModel!.mapImage.isEmpty
                ? Image.asset(
                    'assets/images/basic.png',
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    widget.siteModel!.mapImage,
                    fit: BoxFit.cover,
                  ),

            const SizedBox(height: 16.0),

            /// 알람창
            WarningBox(
              alarmDesc: state.alarmDesc,

              /// 전체 알람 해제(미구현)
              onAlarmAllClearPressed: () {},
              onAlarmClearPressed: (alarmId) => viewModel.alarmClear(alarmId),
            ),
            const SizedBox(height: 16.0),

            /// 건물 목록
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => BuildingCard(
                  building: widget.buildingList[index],
                  siteName: widget.siteModel!.siteName,
                  isSecurity: widget.buildingStatusList[index].buildingSecurity,
                  isWarning: widget.buildingStatusList[index].buildingStatus,
                  onSecurityPressed: (securityCode, buildingId) =>
                      viewModel.updateSecurityStatus(securityCode, buildingId),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 10.0),
                itemCount: widget.buildingList.length,
              ),
            ),
          ],
        ),
        tablet: Container(),
      ),
    );
  }
}
