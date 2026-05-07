import 'models.dart';

final User user_0 = User(
  name: const Name(first: 'Me', last: ''),
  avatarUrl: 'assets/avatar_1.png',
  lastActive: DateTime.now(),
);

final User user_1 = User(
  name: const Name(first: '老', last: '强'),
  avatarUrl: 'assets/avatar_2.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 10)),
);

final User user_2 = User(
  name: const Name(first: 'So', last: 'Duri'),
  avatarUrl: 'assets/avatar_3.png',
  lastActive: DateTime.now().subtract(const Duration(minutes: 20)),
);

final User user_3 = User(
  name: const Name(first: 'Lily', last: 'MacDonald'),
  avatarUrl: 'assets/avatar_4.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 2)),
);

final User user_4 = User(
  name: const Name(first: 'Ziad', last: 'Aouad'),
  avatarUrl: 'assets/avatar_5.png',
  lastActive: DateTime.now().subtract(const Duration(hours: 6)),
);

final List<Email> emails = [
  Email(
    sender: user_1,
    recipients: [],
    subject: '豆花鱼',
    content: "最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。",
  ),

  Email(
    sender: user_2,
    recipients: [],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week?\n\nSo",
  ),

  Email(
    sender: user_3,
    recipients: [],
    subject: 'This food show is made for you',
    content: "Ping - you'd love this new food show I started watching.",
    attachments: [const Attachment(url: 'assets/thumbnail_1.png')],
  ),

  Email(
    sender: user_4,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content: "What do you think about training to be volunteer EMTs?",
  ),
];

final List<Email> replies = [
  Email(
    sender: user_2,
    recipients: [user_3, user_2],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown.",
  ),

  Email(
    sender: user_0,
    recipients: [user_3, user_2],
    subject: 'Dinner Club',
    content: "Yes! I'm definitely up for taking a risk this week.",
  ),
];
