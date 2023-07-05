class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;

  bool select = false;
  int id;
  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage,

    this.select = false,
    required this.id,
  });
}
