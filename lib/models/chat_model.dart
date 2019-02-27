class ChatModel{

  final String name;
  String message;
  final String status;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.status, this.time, this.imageUrl});

}

List<ChatModel> messageData = [
  new ChatModel(
    name: "Fernando Espino",
    message: "Hola",
    status: "Soy developer",
    time: "15:31",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYERCqZ1DunHMgZ1S4ict2pPvSh5BfmBY9yjbeRZTal28yr2WPmg"
  ),
  new ChatModel(
    name: "Perla Segovia",
    message: "Buenos dias!",
    status: "PM",
    time: "12:05",
    imageUrl: "https://st2.depositphotos.com/1007566/11569/v/950/depositphotos_115690756-stock-illustration-young-and-elegant-woman-avatar.jpg"
  ),
  new ChatModel(
    name: "Mi amor divino",
    message: "Hola Guapote!",
    status: "Soy toda una reina",
    time: "18:00",
    imageUrl: "https://st2.depositphotos.com/1007566/11569/v/950/depositphotos_115690782-stock-illustration-young-and-elegant-woman-avatar.jpg"
  ),
  new ChatModel(
    name: "Arturo DJ",
    message: "que tal bro!",
    status: "DJ #1",
    time: "23:46",
    imageUrl: "https://st2.depositphotos.com/1006318/5909/v/950/depositphotos_59094043-stock-illustration-profile-icon-male-avatar.jpg"
  ),
  new ChatModel(
    name: "David Ramos",
    message: "Pasa el curso.",
    status: "Gamers",
    time: "14:17",
    imageUrl: "https://st2.depositphotos.com/1006318/5909/v/950/depositphotos_59094739-stock-illustration-profile-icon-male-avatar.jpg"
  ),
  new ChatModel(
    name: "Juan Perez",
    message: "Fiesta en mi casa!",
    status: "Animo raza",
    time: "10:15",
    imageUrl: "https://st2.depositphotos.com/1006318/8387/v/950/depositphotos_83871630-stock-illustration-profile-icon-male-avatar.jpg"
  ),
  new ChatModel(
    name: "Jona Peña",
    message: "He vuelto a mty en mi casa!",
    status: "Viajando por el mundo",
    time: "05:55",
    imageUrl: "https://st2.depositphotos.com/1006318/8387/v/950/depositphotos_83874174-stock-illustration-profile-icon-male-hispanic-avatar.jpg"
  )
];