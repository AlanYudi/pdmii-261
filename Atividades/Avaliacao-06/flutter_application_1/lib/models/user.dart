class Name {
  const Name({required this.first, required this.last});

  final String first;
  final String last;

  String get fullName {
    if (last.isEmpty) {
      return first;
    }

    return '$first $last';
  }
}

class User {
  const User({
    required this.name,
    required this.avatarUrl,
    required this.lastActive,
  });

  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}
