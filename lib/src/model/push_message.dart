class PushMessage {
  const PushMessage({
    this.title,
    this.body,
    this.data,
    this.isWarning = false,
  });
  final String? title;
  final String? body;
  final Map<String, dynamic>? data;
  final bool isWarning;

  PushMessage copyWith({
    String? title,
    String? body,
    Map<String, dynamic>? data,
    bool? isWarning,
    bool nullTitle = false,
    bool nullBody = false,
  }) {
    return PushMessage(
      title: nullTitle ? null : title ?? this.title,
      body: nullBody ? null : body ?? this.body,
      data: data ?? this.data,
      isWarning: isWarning ?? this.isWarning,
    );
  }
}
