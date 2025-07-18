import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_guard/src/view/base_view_state.dart';

abstract class BaseViewModel<S extends BaseViewState> extends AutoDisposeNotifier<S> {}
