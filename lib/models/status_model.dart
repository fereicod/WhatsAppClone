import 'package:WhatsAppClone/models/chat_model.dart';

class StatusModel{
  final String imgUrl;
  final String name;
  final String time;

  StatusModel({this.name, this.time, this.imgUrl});
}

List<StatusModel> status = [
  new StatusModel(
    name: messageData[0].name,
    time: "3am",
    imgUrl: messageData[0].imageUrl
  ),
  new StatusModel(
    name: messageData[1].name,
    time: "4am",
    imgUrl: messageData[1].imageUrl
  ),
  new StatusModel(
    name: messageData[2].name,
    time: "5am",
    imgUrl: messageData[3].imageUrl
  ),
];