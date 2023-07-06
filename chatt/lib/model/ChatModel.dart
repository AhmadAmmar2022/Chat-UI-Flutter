class ChatModel {
  late String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  bool select = false;
  String status="Ahmad";
  int id;
  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
       this.status="Ahmad",
    required this.currentMessage,
    this.select = false,
    required this.id,
  });
}
