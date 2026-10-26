import 'package:flutter/widgets.dart';
import 'package:skillmatch/generated/l10n.dart';

extension BuildContextLocalization on BuildContext {
  S get l10n => S.of(this);
}
