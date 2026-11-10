enum RoadmapMilestoneStatus { completed, inProgress, next, upcoming, ready }

enum RoadmapTaskType { learnBloc, implementBloc, refactorProject }

class RoadmapTask {
  const RoadmapTask({required this.type, this.isComplete = false});

  final RoadmapTaskType type;
  final bool isComplete;
}
