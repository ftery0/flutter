import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_manager/models/user.dart';

// Define a StateNotifier to hold and manage the User state
class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null); // Initial state is null

  // Example method to set the current user
  void setUser(User user) {
    state = user;
  }

  // Example method to clear the user
  void clearUser() {
    state = null;
  }
}

// Create the StateNotifierProvider
final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier();
});