class ChatModel {
  final String image;
  final String name;
  final bool isActive;

  final String? message;
  final bool? arrived;
  final String? time;

  ChatModel({
    this.message,
    this.arrived,
    this.time,
    required this.image,
    required this.name,
    required this.isActive,
  });
}

List<ChatModel> chats = [
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Yomna Othman",
      isActive: true,
      arrived: true,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Kareem Othman",
      isActive: true,
      arrived: false,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Yomna Wael",
      isActive: false,
      arrived: false,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Mohammed Elshabrawy",
      isActive: false,
      arrived: true,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Yomna Othman",
      isActive: true,
      arrived: false,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Amira Eldemerdash",
      isActive: true,
      arrived: true,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Eren yeger",
      isActive: true,
      arrived: false,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Hend Shawkat",
      isActive: true,
      arrived: true,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "ramzy Elsalamony",
      isActive: false,
      arrived: true,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Ahmed Sardina",
      isActive: true,
      arrived: false,
      message: "Hey there i am using what's app",
      time: ". 10:29 AM"),
];
