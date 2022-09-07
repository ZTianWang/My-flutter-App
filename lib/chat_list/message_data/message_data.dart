class MessageData {
  String avatar;
  String title;
  String subtitle;
  DateTime time;
  int newNum = 0;
  MessageType type;

  MessageData(this.avatar, this.title, this.subtitle, this.time, this.newNum,
      this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageList = [
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      5,
      MessageType.CHAT),
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      2,
      MessageType.CHAT),
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      0,
      MessageType.CHAT),
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      0,
      MessageType.CHAT),
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      0,
      MessageType.CHAT),
  new MessageData(
      'https://img0.baidu.com/it/u=3233011578,2406161509&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=554',
      'Batman',
      'Introduce a little anarchy, upset the established order, and everything bees chaos, I’m an agent of chaos , and you know the thing about chaos? It’s fair.',
      new DateTime.now(),
      0,
      MessageType.CHAT),
];
