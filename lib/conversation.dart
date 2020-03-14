import 'users.dart';

class Conversation {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;

  final bool unread;

  Conversation({
    this.sender,
    this.time,
    this.text,

    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  user_id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg', last_name: 'Romero',email: 'abc@gmail.com'
);

// USERS
final User greg = User(
  user_id: 1,
  name: 'Greg',
  last_name: 'Romero',
  imageUrl: 'assets/images/greg.jpg',
  email: 'abc@gmail.com'
);
final User james = User(
  user_id: 2,
  name: 'James',
  last_name: 'Romero',
  imageUrl: 'assets/images/james.jpg',
    email: 'abc@gmail.com'
);
final User john = User(
  user_id: 3,
  name: 'John',
  last_name: 'Romero',
  imageUrl: 'assets/images/john.jpg',
    email: 'abc@gmail.com'
);
final User olivia = User(
  user_id: 4,
  name: 'Olivia',
  last_name: 'Romero',
  imageUrl: 'assets/images/olivia.jpg',
    email: 'abc@gmail.com'
);
final User sam = User(
  user_id: 5,
  name: 'Sam',
  last_name: 'Romero',
  imageUrl: 'assets/images/sam.jpg',
    email: 'abc@gmail.com'
);
final User sophia = User(
  user_id: 6,
  name: 'Sophia',
  last_name: 'Romero',
  imageUrl: 'assets/images/sophia.jpg',
    email: 'abc@gmail.com'
);
final User steven = User(
  user_id: 7,
  name: 'Steven',
  last_name: 'Romero',
  imageUrl: 'assets/images/steven.jpg',
    email: 'abc@gmail.com'
);




List<Conversation> chats = [
  Conversation(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do ',
    unread: true,
  ),
  Conversation(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Conversation(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  Conversation(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
  ),
  Conversation(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?What did you do today?What did you do today?',
    unread: false,
  ),
  Conversation(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
  Conversation(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: false,
  ),
];

List<Conversation> messages = [
  Conversation(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? WWhat did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?',
    unread: true,
  ),
  Conversation(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?What did you do today?',
    unread: true,
  ),
  Conversation(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    unread: true,
  ),
  Conversation(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    unread: true,
  ),
  Conversation(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    unread: true,
  ),
  Conversation(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    unread: true,
  ),
];



