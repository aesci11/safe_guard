import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:safe_guard/src/repository/site_repository.dart';
import 'package:safe_guard/src/view/video/video_view_state.dart';

part 'video_view_model.g.dart';

@riverpod
class VideoViewModel extends _$VideoViewModel {
  @override
  VideoViewState build() {
    return const VideoViewState(
      isBusy: false,
      cameraList: [],
      cctvUrlList: [],
      pageList: [],
      itemPerPage: 1,
      isBuffering: false,
    );
  }

  int get pageCount => (state.cameraList.length / state.itemPerPage).ceil();

  /// CCTV RTSP 주소, CCTV 이름만 추출
  void get cctvUrlList {
    final url = state.cameraList.map((e) => '${e.externalUrl}:${e.rtspPort}/${e.streamCif}#${e.cameraName}').toList();
    state = state.copyWith(cctvUrlList: url);
  }

  /// CCTV RTSP 주소 분할화면 기준으로 리스트 분류
  List<List<String>> get pagedCctvUrls {
    cctvUrlList;
    List<List<String>> pageList = [];
    for (int i = 0; i < state.cctvUrlList.length; i += state.itemPerPage) {
      int end = (i + state.itemPerPage) > state.cctvUrlList.length ? state.cctvUrlList.length : i + state.itemPerPage;
      pageList.add(state.cctvUrlList.sublist(i, end));
    }
    return pageList;
  }

  /// 1분할
  void page1Divisions() {
    state = state.copyWith(itemPerPage: 1);
    final pageList = pagedCctvUrls;
    state = state.copyWith(pageList: pageList);
  }

  /// 4분할
  void page4Divisions(PageController controller) {
    state = state.copyWith(itemPerPage: 4);
    final pageList = pagedCctvUrls;
    state = state.copyWith(pageList: pageList);
    goToFirstPage(controller);
  }

  /// 9분할
  void page9Divisions(PageController controller) {
    state = state.copyWith(itemPerPage: 9);
    final pageList = pagedCctvUrls;
    state = state.copyWith(pageList: pageList);
    goToFirstPage(controller);
  }

  /// 카메라 리스트 불러오기
  Future<void> getCameraList() async {
    state = state.copyWith(isBusy: true);
    final result = await Future.wait([
      ref.read(getCameraPlayInfoProvider.future),
      Future.delayed(const Duration(milliseconds: 500)),
    ]);
    state = state.copyWith(
      isBusy: false,
      cameraList: result[0],
    );
    final pageList = pagedCctvUrls;
    state = state.copyWith(pageList: pageList);
  }

  /// 카메라 리스트 클릭 영상 표출
  void clickCctvList(PageController controller, int index) {
    page1Divisions();
    goToJumpPage(controller, index);
  }

  ///다음 페이지 이동
  void goToNextPage(PageController controller, int currentPage) {
    if (currentPage < pageCount - 1) {
      controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  /// 이전 페이지 이동
  void goToPreviousPage(PageController controller, int currentPage) {
    if (currentPage > 0) {
      controller.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  /// 페이지 바로 이동
  void goToJumpPage(PageController controller, int index) {
    controller.jumpToPage(index);
  }

  /// 첫 페이지로 이동
  void goToFirstPage(PageController controller) {
    controller.jumpToPage(0);
  }

  /// 영상 새로고침
  void refreshPage() {}
}
