import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/model/contact_list.dart';
import 'package:safe_guard/src/service/theme_service.dart';
import 'package:safe_guard/theme/component/base_dialog.dart';
import 'package:safe_guard/theme/component/button/button.dart';

class ContactDialog extends ConsumerWidget {
  const ContactDialog({
    super.key,
    required this.contactList,
    required this.makeCall,
  });

  final List<ContactList> contactList;
  final void Function(String phoneNumber) makeCall;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseDialog(
      title: '유관 기관',

      /// 유관 기관 리스트
      content: SizedBox(
        width: double.maxFinite,
        height: 300,
        child: ListView.separated(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                /// 기관 이름
                Text(
                  contactList[index].contactName,
                  style: ref.typo.headline4,
                ),
                const SizedBox(height: 16.0),

                /// 전화 연결
                InkWell(
                  onTap: () {
                    makeCall(contactList[index].telNo);
                  },
                  child: Text(
                    contactList[index].telNo,
                    style: ref.typo.headline6,
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: contactList.length,
        ),
      ),

      /// 나가기 버튼
      actions: [
        Row(
          children: [
            Expanded(
              child: Button(
                onPressed: () => Navigator.pop(context),
                text: '닫기',
                type: ButtonType.fill,
                size: ButtonSize.large,
                backgroundColor: ref.color.onHintContainer,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
