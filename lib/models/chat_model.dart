class ChatModel {
  final String image;
  final String name;
  final bool isActive;

  final String? message;
  final bool? seen;
  final String? time;

  ChatModel({
    this.message,
    this.seen,
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
      seen: true,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Kareem Othman",
      isActive: true,
      seen: false,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Yomna Wael",
      isActive: false,
      seen: false,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Mohammed Elshabrawy",
      isActive: false,
      seen: true,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Yomna Othman",
      isActive: true,
      seen: false,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Amira Eldemerdash",
      isActive: true,
      seen: true,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Eren yeger",
      isActive: true,
      seen: false,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Hend Shawkat",
      isActive: true,
      seen: true,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "ramzy Elsalamony",
      isActive: false,
      seen: true,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
  ChatModel(
      image: "assets/images/profile.jpg",
      name: "Ahmed Sardina",
      isActive: true,
      seen: false,
      message: "Hey there i am using what's app",
      time: "10:29 AM"),
];
