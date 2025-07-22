import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/src/view/base_view.dart';
import 'package:safe_guard/src/view/video/video_view_model.dart';
import 'package:safe_guard/src/view/video/widget/video_list_card.dart';
import 'package:safe_guard/src/view/video/widget/video_division_page.dart';
import 'package:safe_guard/theme/component/button/button.dart';
import 'package:safe_guard/theme/component/pop_button.dart';
import 'package:safe_guard/theme/res/layout.dart';

class VideoView extends ConsumerStatefulWidget {
  const VideoView({
    super.key,
    required this.siteName,
  });

  /// 사이트 이름
  final String siteName;

  @override
  ConsumerState<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends ConsumerState<VideoView> {
  /// 페이지 컨트롤러
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  /// 현재 페이지
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    /// 가로모드 고정
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(videoViewModelProvider.notifier).getCameraList();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();

    /// 영상 페이지 나갈때 세로모드 고정
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BaseView(
      viewModelProvider: videoViewModelProvider,
      builder: (ref, viewModel, state) => SafeArea(
        child: Scaffold(
          body: context.layout(
            /// Mobile & 세로모드
            Column(
              children: [
                /// CCTV 화면
                SizedBox(
                  height: screenSize.height / 3.7,
                  child: Stack(
                    children: [
                      PageView(
                        controller: _pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        pageSnapping: false,
                        scrollBehavior: const ScrollBehavior(),
                        onPageChanged: (value) => currentPage = value,
                        children: state.pageList
                            .map(
                              (pageList) => VideoDivisionPage(pageList: pageList, itemPerPage: state.itemPerPage),
                            )
                            .toList(),
                      ),

                      /// 이전 페이지 버튼
                      Positioned(
                        left: 10,
                        top: 96,
                        child: Button(
                          onPressed: () => viewModel.goToPreviousPage(_pageController, currentPage),
                          type: ButtonType.flat,
                          size: ButtonSize.small,
                          icon: 'light_arrow_back',
                          color: ref.color.onPrimary,
                        ),
                      ),

                      /// 다음 페이지 버튼
                      Positioned(
                        right: 10,
                        top: 96,
                        child: Button(
                          onPressed: () => viewModel.goToNextPage(_pageController, currentPage),
                          type: ButtonType.flat,
                          size: ButtonSize.small,
                          icon: 'light_arrow_forward',
                          color: ref.color.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),

                /// 분할화면 아이콘
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                      onPressed: () => viewModel.page4Divisions(_pageController),
                      type: ButtonType.flat,
                      size: ButtonSize.small,
                      icon: 'square_4',
                      iconSize: 46.0,
                      color: ref.color.text,
                    ),
                    Button(
                      onPressed: () => viewModel.page9Divisions(_pageController),
                      type: ButtonType.flat,
                      size: ButtonSize.small,
                      icon: 'square_9',
                      iconSize: 46.0,
                      color: ref.color.text,
                    ),
                  ],
                ),

                /// CCTV 리스트
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => VideoListCard(
                      cameraName: state.cameraList[index].cameraName,
                      cameraId: state.cameraList[index].cameraId,
                      cctvUrl: state.cctvUrlList[index],
                      onPressed: () => viewModel.clickCctvList(_pageController, index),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 4.0),
                    itemCount: state.cameraList.length,
                  ),
                ),
              ],
            ),

            /// tablet & 가로모드
            tablet: Row(
              /// CCTV 리스트
              children: [
                SizedBox(
                  width: screenSize.width / 4.4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const PopButton(),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
                              child: Text(
                                '카메라 목록',
                                textScaler: TextScaler.noScaling,
                                style: ref.typo.headline6.copyWith(fontWeight: ref.typo.semiBold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) => VideoListCard(
                            cameraName: state.cameraList[index].cameraName,
                            cameraId: state.cameraList[index].cameraId,
                            cctvUrl: state.cctvUrlList[index],
                            onPressed: () => viewModel.clickCctvList(_pageController, index),
                          ),
                          separatorBuilder: (context, index) => const SizedBox(height: 4.0),
                          itemCount: state.cameraList.length,
                        ),
                      ),
                    ],
                  ),
                ),

                /// CCTV 화면
                Expanded(
                  child: Stack(
                    children: [
                      PageView(
                        controller: _pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        pageSnapping: false,
                        onPageChanged: (value) => currentPage = value,
                        children: state.pageList
                            .map(
                              (pageList) => VideoDivisionPage(pageList: pageList, itemPerPage: state.itemPerPage),
                            )
                            .toList(),
                      ),

                      /// 이전 페이지 버튼
                      Positioned(
                        left: 10,
                        top: 160,
                        child: Button(
                          onPressed: () => viewModel.goToPreviousPage(_pageController, currentPage),
                          type: ButtonType.flat,
                          size: ButtonSize.small,
                          icon: 'light_arrow_back',
                          iconSize: 30.0,
                          color: ref.color.onPrimary,
                        ),
                      ),

                      /// 다음 페이지 버튼
                      Positioned(
                        right: 10,
                        top: 160,
                        child: Button(
                          onPressed: () => viewModel.goToNextPage(_pageController, currentPage),
                          type: ButtonType.flat,
                          size: ButtonSize.small,
                          icon: 'light_arrow_forward',
                          iconSize: 30.0,
                          color: ref.color.onPrimary,
                        ),
                      ),

                      /// 4분할 아이콘
                      Positioned(
                        top: 6.0,
                        right: 6.0,
                        child: Button(
                          onPressed: () => viewModel.page4Divisions(_pageController),
                          type: ButtonType.flat,
                          icon: 'square_4',
                          iconSize: 46.0,
                          color: ref.color.onPrimary,
                        ),
                      ),

                      /// 9분할 아이콘
                      Positioned(
                        top: 66.0,
                        right: 6.0,
                        child: Button(
                          onPressed: () => viewModel.page9Divisions(_pageController),
                          type: ButtonType.flat,
                          icon: 'square_9',
                          iconSize: 46.0,
                          color: ref.color.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
