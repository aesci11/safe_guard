import 'package:safe_guard/src/model/camera_model.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

class VideoViewState extends BaseViewState {
  const VideoViewState({
    required this.isBusy,
    required this.cameraList,
    required this.cctvUrlList,
    required this.pageList,
    required this.itemPerPage,
    required this.isBuffering,
  });
  @override
  final bool isBusy;
  final List<CameraModel> cameraList;
  final List<String> cctvUrlList;
  final List<List<String>> pageList;
  final int itemPerPage;
  final bool isBuffering;

  VideoViewState copyWith({
    bool? isBusy,
    List<CameraModel>? cameraList,
    List<String>? cctvUrlList,
    List<List<String>>? pageList,
    int? itemPerPage,
    bool? isBuffering,
  }) {
    return VideoViewState(
      isBusy: isBusy ?? this.isBusy,
      cameraList: cameraList ?? this.cameraList,
      cctvUrlList: cctvUrlList ?? this.cctvUrlList,
      pageList: pageList ?? this.pageList,
      itemPerPage: itemPerPage ?? this.itemPerPage,
      isBuffering: isBuffering ?? this.isBuffering,
    );
  }
}
