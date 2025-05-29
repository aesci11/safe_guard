import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/push_notification_service.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/building/building_view.dart';
import 'package:safe_guard/src/view/history/history_view.dart';
import 'package:safe_guard/src/view/history/history_view_model.dart';
import 'package:safe_guard/src/view/home/home_view_model.dart';
import 'package:safe_guard/src/view/home/widget/settings_dialog.dart';
import 'package:safe_guard/src/view/video/video_view.dart';
import 'package:safe_guard/theme/component/render_appbar.dart';
import 'package:safe_guard/theme/res/layout.dart';

/// 남은 작업
/// 1. 차단기 제어 미구현
/// 2. push message 테스트
/// 3. 알람 사운드 확인
/// 4.
///

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;
  bool isDialog = true;

  @override
  void initState() {
    super.initState();

    /// push 메세지 초기화
    ref.read(pushNotificationServiceProvider.notifier).initLocalNotifications();

    /// 안드로이드 알람 채널 초기화
    ref.read(pushNotificationServiceProvider.notifier).initializeAndroidNotificationChannel();

    /// push 메세지 처리
    ref.read(pushNotificationServiceProvider.notifier).setupFMC();

    /// 알람 권한 요청
    ref.read(homeViewModelProvider.notifier).requestPermission();

    /// 바텀 네비게이션 시트 구성
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(tabListener);

    /// 초기 사이트 정보 불러오기
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeViewModelProvider.notifier).getSiteInfo();
      ref.read(homeViewModelProvider.notifier).getBuildingAndBuildingStatusList();
      ref.read(homeViewModelProvider.notifier).getContactList();
      ref.read(homeViewModelProvider.notifier).packageInfo();
    });
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
      viewModelProvider: homeViewModelProvider,
      builder: (ref, viewModel, state) => PopScope(
        /// 뒤로가기 버튼 클릭시 종료 확인 메세지 팝업
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (isDialog) {
            isDialog = false;
            viewModel.showExitDialog(context).then((value) {
              isDialog = true;
            });
          }
        },
        child: Scaffold(
          appBar: RenderAppbar(
            siteName: state.siteModel.siteName,

            /// 새로고침 버튼
            onRefreshPressed: _tabController.index == 2
                ? ref.read(historyViewModelProvider.notifier).getAlarmHistoryList
                : viewModel.getBuildingAndBuildingStatusList,

            /// 설정창 버튼
            onSettingPressed: () {
              showDialog(
                context: context,
                builder: (context) => SettingsDialog(
                  onLogoutPressed: () => viewModel.logout(context),
                  siteUrl: state.siteModel.siteDomain,
                  appVersion: state.appVersion,
                ),
              );
            },
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              /// 홈
              BuildingView(
                buildingList: state.buildingList,
                buildingStatusList: state.buildingStatusList,
                siteModel: state.siteModel,
              ),

              /// 영상 - 새로운 페이지로 이동
              const SizedBox(),

              /// 이력 조회
              HistoryView(siteName: state.siteModel.siteName),

              /// 전화 연결 - 팝업창
              const SizedBox(),
            ],
          ),
          bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _tabController.index == 1 ? context.layout(70, tablet: 0, desktop: 0) : context.layout(80),
            child: BottomNavigationBar(
              selectedItemColor: ref.color.secondary,
              unselectedItemColor: ref.color.inactive,
              backgroundColor: ref.color.onInactiveContainer,
              type: BottomNavigationBarType.fixed,
              iconSize: 24.0,
              selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: ref.typo.semiBold),
              currentIndex: _index,
              onTap: (value) => value == 1
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoView(siteName: state.siteModel.siteName),
                      ),
                    )
                  : value == 3
                      ? viewModel.contactListPopup(context)
                      : _tabController.animateTo(value),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '메인화면'),
                BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_rounded), label: '영상'),
                BottomNavigationBarItem(icon: Icon(Icons.history), label: '이력조회'),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: '전화연결'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
