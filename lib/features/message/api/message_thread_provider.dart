import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'message_thread_provider.g.dart';

// Create a provider for the filter state
@riverpod
class MessageFilterState extends _$MessageFilterState {
  @override
  String build() {
    return 'unread'; // Default filter value
  }

  // Method to update the filter value
  void updateFilter(String newFilter) {
    state = newFilter; // Update the state with the new filter value
  }
}
