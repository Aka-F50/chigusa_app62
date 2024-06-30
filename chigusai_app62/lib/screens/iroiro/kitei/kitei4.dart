import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class Kitei4 extends StatefulWidget {
  static const routeName = "/kitei4";
  const Kitei4({super.key});

  @override
  State<Kitei4> createState() => _Kitei1ScreenState();
}

class _Kitei1ScreenState extends State<Kitei4> {
  File? file;

  Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);

    return file;
  }

  Future<File?> _load(String url) async {
    final data = await rootBundle.load(url);
    final bytes = data.buffer.asUint8List();

    return await _storeFile(url, bytes);
  }

  @override
  void initState() {
    _load('assets/documents/zenki.pdf').then((value) {
      setState(() {
        file = value;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("全校企画")),
      body: file == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PDFView(
                filePath: file!.path,
              ),
            ),
    );
  }
}