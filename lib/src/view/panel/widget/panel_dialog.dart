import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/sensor_model.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/asset_icon.dart';
import 'package:safe_guard/theme/component/base_dialog.dart';

class PanelDialog extends ConsumerStatefulWidget {
  const PanelDialog({
    super.key,
    required this.panelList,
    required this.getPanelState,
  });

  final List<SensorModel> panelList;
  final void Function(String sensorId) getPanelState;

  @override
  ConsumerState<PanelDialog> createState() => _PanelDialogState();
}

class _PanelDialogState extends ConsumerState<PanelDialog> {
  /// 분전반 선택 인덱스
  int clickIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      title: '분전반 선택',
      content: SizedBox(
        width: double.maxFinite,
        height: 300,
        child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              widget.getPanelState(widget.panelList[index].sensorId);
              setState(() {
                clickIndex = index;
              });
            },
            splashColor: ref.color.hintContainer,
            borderRadius: BorderRadius.circular(16.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: [
                  AssetIcon(
                    'box_1_line',
                    color: ref.color.primary,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    widget.panelList[index].sensorName,
                    style: ref.typo.subtitle1.copyWith(fontWeight: ref.typo.semiBold),
                  ),
                  const SizedBox(width: 20.0),

                  /// 분전반 선택 여부
                  if (index == clickIndex)
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ref.color.secondary,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Text(
                        '선택',
                        style: ref.typo.body2.copyWith(color: ref.color.secondary),
                      ),
                    ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 22.0),
          itemCount: widget.panelList.length,
        ),
      ),
    );
  }
}
