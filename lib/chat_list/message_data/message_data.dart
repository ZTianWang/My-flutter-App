class MessageData {
  String avatar;
  String title;
  String contant;
  DateTime time;
  int newNum = 0;
  MessageType type;

  MessageData(
      this.avatar, this.title, this.contant, this.time, this.newNum, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageList = [
  MessageData(
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Connor',
      'What kind of music do you like and what app do you use?',
      DateTime(2022, 9, 8, 11, 35),
      5,
      MessageType.CHAT),
  MessageData(
      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80',
      'Laura Levy',
      'Hi Tina. How\'s your night going?',
      DateTime(2022, 9, 8, 15, 22),
      2,
      MessageType.CHAT),
  MessageData(
      'https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'Ellen Lambert',
      'Cool!😊 let\'s meet at 16:00 near the shopping mall',
      DateTime.now(),
      0,
      MessageType.CHAT),
  MessageData(
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'Connor',
      'What kind of music do you like and what app do you use?',
      DateTime(2022, 9, 8, 11, 35),
      0,
      MessageType.CHAT),
  MessageData(
      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80',
      'Laura Levy',
      'Hi Tina. How\'s your night going?',
      DateTime(2022, 9, 8, 15, 22),
      0,
      MessageType.CHAT),
  MessageData(
      'https://images.unsplash.com/photo-1628890923662-2cb23c2e0cfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'Ellen Lambert',
      'Cool!😊 let\'s meet at 16:00 near the shopping mall',
      DateTime.now(),
      0,
      MessageType.CHAT),
];
