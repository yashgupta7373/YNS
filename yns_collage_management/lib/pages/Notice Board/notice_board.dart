import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:lottie/lottie.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({super.key});

  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  //
  final titleController = TextEditingController();

  // image picker
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemorary = File(image.path);
    setState(() {
      _image = imageTemorary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        title: const Text('Notice'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "Notice Board",
                textAlign: TextAlign.center,
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.teal.shade900,
                          blurRadius: 5,
                          offset: const Offset(2, 2))
                    ],
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_4qkb4ywv.json'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    backgroundColor: const Color.fromRGBO(100, 232, 222, 0.7),
                    title: const Center(
                      child: Text(
                        'Uplode New Notice',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Title:', style: TextStyle(fontSize: 15)),
                        const SizedBox(
                            width: double.infinity,
                            child: TextField(
                              // controller: titleController,
                              style: TextStyle(fontSize: 15),
                            )),
                        const SizedBox(height: 20),
                        const Text('Upload Notice:',
                            style: TextStyle(fontSize: 15)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: InkWell(
                              onTap: (() {
                                getImage();
                              }),
                              child: Container(
                                // height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1, color: Colors.teal.shade600),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _image != null
                                        ? Image.file(
                                            _image!,
                                            height: 50,
                                            width: 50,
                                          )
                                        : const Icon(
                                            Icons.cloud_upload_sharp,
                                            size: 35,
                                          ),
                                    const SizedBox(width: 5),
                                    const Text('Upload Notice')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text(
                                  'CANCEL',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 77, 64)),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text(
                                  'Upload',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 77, 64)),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ));
        },
        label: const Text('Upload'),
      ),
    );
  }
}
