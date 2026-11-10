import 'package:flutter/widgets.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/features/roadmap/domain/entities/roadmap_milestone.dart';

extension RoadmapTaskLocalization on RoadmapTask {
  String localizedTitle(BuildContext context) => switch (type) {
    RoadmapTaskType.learnBloc => context.l10n.roadmapTaskLearnBloc,
    RoadmapTaskType.implementBloc => context.l10n.roadmapTaskImplementBloc,
    RoadmapTaskType.refactorProject => context.l10n.roadmapTaskRefactorProject,
  };
}
