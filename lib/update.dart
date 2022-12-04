import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:note_kippa/urls.dart';

class UpdateNote extends StatefulWidget {
  final http.Client client;
  final int id;
  final String note;
  const UpdateNote({super.key, required this.client, required this.id, required this.note});

  @override
  State<UpdateNote> createState() => _UpdateNoteState();
}

class _UpdateNoteState extends State<UpdateNote> {
  Url url = Url();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Update"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            maxLines: 10,
          ),
          ElevatedButton(
            onPressed: () {
              widget.client.put(url.updateUrl(widget.id), body: {'body':controller.text} );
              Navigator.pop(context);
            },
            child: Text(
              "Update Note",
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
          )
        ],
      ),
    );
  }
}
