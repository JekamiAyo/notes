import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:note_kippa/urls.dart';

class CreateDocument extends StatefulWidget {
  final http.Client client;
  const CreateDocument({super.key, required this.client});

  @override
  State<CreateDocument> createState() => _CreateDocumentState();
}

class _CreateDocumentState extends State<CreateDocument> {
  Url url = Url();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Create"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            maxLines: 10,
          ),
          ElevatedButton(
            onPressed: () {
              widget.client.post(url.createUrl, body: {'body':controller.text});
              Navigator.pop(context);
            },
            child: Text(
              "Create Note",
            ),
          )
        ],
      ),
    );
  }
}
