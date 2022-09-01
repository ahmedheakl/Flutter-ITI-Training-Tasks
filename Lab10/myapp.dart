import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:omg/album.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Album> albumList = [];

  @override
  void initState() {
    super.initState();
    fetchAlbumHelper();
  }

  fetchAlbumHelper() async {
    await fetchAlbum();
  }

  fetchAlbum() async {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List data = jsonDecode(response.body);
      setState(() {
        for (int i = 0; i < data.length; ++i) {
          Album album = Album.fromJson(data[i]);
          albumList.add(album);
        }
      });
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Album Data'),
            ),
            body: albumList.isEmpty
                ? const CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: albumList.length,
                            itemBuilder: ((context, index) => Card(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      Text(
                                          "Userid: ${albumList[index].userId}"),
                                      Text("id: ${albumList[index].id}"),
                                      Text("title: ${albumList[index].title}"),
                                    ])))),
                      ),
                    ]))));
  }
}
