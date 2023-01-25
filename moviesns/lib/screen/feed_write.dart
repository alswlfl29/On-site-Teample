import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FeedWrite extends StatefulWidget {
  const FeedWrite({super.key});

  @override
  State<FeedWrite> createState() => _FeedWriteState();
}

class _FeedWriteState extends State<FeedWrite> {
  final _tilteController = TextEditingController();
  final _contentController = TextEditingController();

  var snackBar = const SnackBar(content: Text('글은 비워둘 수 없습니다.'));
  final ImagePicker _picker = ImagePicker();
  // final feedRepo = FeedRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNS 작성'),
        actions: [
          IconButton(
              onPressed: () {
                String text = _tilteController.text;
                if (text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              icon: Icon(Icons.save)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
                'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/22/117113869.2.jpg',
                height: 240,
                width: 500,
                fit: BoxFit.cover),
          ),
          Container(
            child: (Text(
              'title',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
          ),
          Container(
            child: TextField(
              controller: _tilteController,
              // keyboardType: TextInputType.multiline,
              // minLines: null,
              // maxLines: 3,
              // expands: true,
              // decoration: InputDecoration(contentPadding: EdgeInsets.all(20)),
            ),
          ),
          Container(
            child: (Text(
              'content',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
          ),
          Expanded(
            child: TextField(
              controller: _contentController,
              keyboardType: TextInputType.multiline,
              minLines: null,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(contentPadding: EdgeInsets.all(20)),
            ),
            // ),
          ),
          IconButton(
            icon: Icon(Icons.image),
            onPressed: () async {
              final file = await _picker.pickImage(source: ImageSource.gallery);
              // String result = await feedRepo.upload(file!.path, file.name);
              // Map json = jsonDecode(result);
              // print(json);
            },
          )
        ],
      ),
    );
  }
}
