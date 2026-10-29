enum RoadmapMilestoneStatus { completed, inProgress, next, upcoming, ready }

class RoadmapTask {
  const RoadmapTask({required this.title, this.isComplete = false});

  final String title;
  final bool isComplete;
}
