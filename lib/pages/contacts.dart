import 'package:flutter/material.dart';
import 'package:WhatsAppClone/models/chat_model.dart';
import 'package:WhatsAppClone/pages/chat_screen.dart';

class Contacts extends StatefulWidget {
  Widget appBarTitle = new Text("Seleccionar Contactos");
  Icon actionIcon = new Icon(Icons.search);
  @override
  _ContactsState createState() => new _ContactsState();
 }
class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: new AppBar(
       title: widget.appBarTitle,
       actions: <Widget>[
            IconButton(
              icon: widget.actionIcon,
              onPressed: () {
                setState(() {
                      if (widget.actionIcon.icon == Icons.search) {
                        widget.actionIcon = new Icon(Icons.close);
                        widget.appBarTitle = new TextField(
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                          decoration: new InputDecoration(
                              prefixIcon:
                                  new Icon(Icons.search, color: Colors.white),
                              hintText: "Search...",
                              hintStyle: new TextStyle(color: Colors.white)),
                          onChanged: (value) {
                            print(value);
                            //filter your contact list based on value
                          },
                        );
                      } else {
                        widget.actionIcon =
                            new Icon(Icons.search); //reset to initial state
                        widget.appBarTitle = new Text("Contacts");
                      }
                    });
              },
            ),
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {},
            ),
          ],
     ),
     body: new ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  messageData[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                new Text(
                  "Mobile",
                  style: new TextStyle(color: Theme.of(context).accentColor, fontSize: 16.0),
                  )
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  messageData[i].status,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0)
                )
              ),
              onTap: (){
                var route = new MaterialPageRoute(
                  builder: (BuildContext context) => new ChatScreen(name: messageData[i].name)
                );
                Navigator.of(context).push(route);
              },
            )
          ]
        ),
      ),
   );
  }
}