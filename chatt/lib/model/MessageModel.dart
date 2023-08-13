class MessageModel {
  String type;
  String message;
   String time;
  MessageModel({required this.message, required this.type, 
  
   required this.time
  });
//

 Map<String, dynamic> toMap() {
    return {
      'type': type,
      'message': message,
      'time': time,
    };
  }

  // Create a MessageModel object from a JSON map
  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      type: map['type'],
      message: map['message'],
      time: map['time'],
    );
  }
}