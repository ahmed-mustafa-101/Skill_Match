import 'package:flutter_bloc/flutter_bloc.dart';

class SavedJobsCubit extends Cubit<Set<String>> {
  SavedJobsCubit() : super(const <String>{});

  void toggleSaved(String jobId) {
    final updatedJobIds = Set<String>.of(state);
    if (!updatedJobIds.add(jobId)) {
      updatedJobIds.remove(jobId);
    }
    emit(Set.unmodifiable(updatedJobIds));
  }
}
